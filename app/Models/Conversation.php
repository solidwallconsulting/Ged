<?php

namespace App\Models;

use Ramsey\Uuid\Uuid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use App\Traits\Uuids;
use App\Models\Message;
use App\Models\Users;

class Conversation extends Model
{
    use HasFactory;
    use Notifiable, Uuids;

    public function messages()
    {
        return $this->hasMany(Message::class);
    }
    public function users()
    {
        return $this->belongsToMany(Users::class, 'conversation_user', 'conversation_id', 'user_id');
    }
}
