<?php

namespace App\Models;

use Ramsey\Uuid\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use App\Traits\Uuids;
use App\Models\Conversation;
use App\Models\Users;
use App\Models\Documents;

class Message extends Model
{
    use HasFactory;

    use Notifiable, Uuids;
    protected $fillable = [
        'content', 'sender_id', 'receiver_id', 'conversation_id', 'uploads','is_read', 'created_at', 'updated_at',
    ];

    public function Conversations()
    {
        return $this->belongsTo(Conversation::class,'conversation_id','id');
    }

    public function sender()
    {
        return $this->belongsTo(Users::class, 'sender_id','id');
    }

    public function receiver()
    {
        return $this->belongsTo(Users::class, 'receiver_id','id');
    }
}
