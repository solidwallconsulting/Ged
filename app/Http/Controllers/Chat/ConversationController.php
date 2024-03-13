<?php

namespace App\Http\Controllers\Chat;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Conversation;
use App\Models\Message;
use App\Models\Users;
 
class ConversationController extends Controller
{
    public function sendMessage(Request $request)
    {
        // Validate incoming request
        $validator = Validator::make($request->all(), [
            'receiver_id' => 'required|exists:users,id',
            'content' => 'required|string',
            'file' => 'nullable|file',
        ]);

        if($validator->fails()){
            return response()->json(['validation error'=> $validator->errors()], 400);
        }

        // Get the sender's and receiver's user ID
        $senderId = Auth::id();
        $receiverId = $request->receiver_id;
        $receiver= Users::where('id',$request->receiver_id)->first();
        //return response()->json($receiver, 200);
        // Find conversation where both the sender and receiver are the participants
        $conversation = Conversation::whereHas('users', function ($query) use ($senderId) {
            $query->where('user_id', $senderId);
        })->whereHas('users', function ($query) use ($receiverId) {
            $query->where('user_id', $receiverId);
        })->first();
        // If no conversation exists, we create a new one and we attach both users to the conversation
        if (!$conversation) {
            $conversation = new Conversation();
            $conversation->save();
            $conversation->users()->attach([$senderId, $receiverId]);
        }
        $message = new Message();
        try {
            if ($request->hasFile('file')) {
            $name = date('YmdHis') . "." .$request->file('file')->getClientOriginalExtension();
            $path = $request->file('file')->move('uploades',$name);
            $message->uploads= 'uploades/' . $name;
            }
        }
        catch (\Throwable $th) {
            
        } 
        $message->content = $request->content;
        $message->sender_id = $senderId;
        $message->receiver_id = $receiverId;
        $message->conversation_id = $conversation->id;
        $message->save();
        // finally create a new message 
        return response()->json(['message' => $message], 200);
    } 
    public function updateIsReadStatus(Request $request, $id)
    {
        try {
            
            $validator = Validator::make($request->all(),[
                'is_read' => 'required|boolean',
            ]);
    
            if($validator->fails()){
                return response()->json(['validation error'=> $validator->errors()], 400);
            }
            $message = Message::findOrFail($id);
            $message->update(['is_read' => $request->is_read]);
    
            return response()->json(['message' => $message], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Message not found'], 404);
        }
    }
    
    public function conversationsByUser(Request $request)
    {
       
        $user = Auth::user();
        // Retrieve the conversations of the connected user ordered by the newest message
        $conversations = Conversation::whereHas('messages', function ($query) {
            $query->latest();
        })->whereHas('users', function ($query) use ($user) {
            $query->where('user_id', $user->id);
        })->with(['messages' => function ($query) {
            $query->latest()->with('sender', 'receiver');
        }, 'users' => function ($query) use ($user) {
            $query->where('users.id', '!=', $user->id);
        }])->get();
        return response()->json(["conversations"=>$conversations],200);
    }

    public function getConversationMessages(Request $request, $id)
    {
       
            $user = Auth::user();
            //return response()->json($id);
            try {
            $conversation = Conversation::findOrFail($id);
            }catch (\Exception $e) {
            return response()->json(['error' => 'Conversation not found'], 404);
             }
            if (!$conversation->users->contains($user)) {
              return response()->json(['error' => 'Unauthorized'], 401);
            }
            $messages = $conversation->messages()->with('sender', 'receiver')->orderBy('id', 'DESC')->get(); 
            return response()->json(['conversation' => $conversation, 'messages' => $messages]);
        
    }

    
}

