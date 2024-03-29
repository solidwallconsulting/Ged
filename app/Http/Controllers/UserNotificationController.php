<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\UserNotificationRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserNotificationController extends Controller
{
    private $userNotificationRepository;
    protected $queryString;

    public function __construct(UserNotificationRepositoryInterface $userNotificationRepository)
    {
        $this->userNotificationRepository = $userNotificationRepository;
    }
    public function index()
    {
        return response()->json($this->userNotificationRepository->getTop10Notification());
    }

    public function getNotifications(Request $request)
    {
        $queryString = (object) $request->all();

        $count = $this->userNotificationRepository->getUserNotificaionCount($queryString);
        return response()->json($this->userNotificationRepository->getUserNotificaions($queryString))
            ->withHeaders(['totalCount' => $count, 'pageSize' => $queryString->pageSize, 'skip' => $queryString->skip]);
    }

    public function markAsRead(Request $request)
    {
        return  response()->json($this->userNotificationRepository->markAsRead($request), 200);
    }

    public function markAllAsRead()
    {
        return  response()->json($this->userNotificationRepository->markAllAsRead(), 200);
    }

    public function updateFcmToken(Request $request)
    {
        $user = Auth::user();
        $user->update([
            'fcmToken' => $request->fcm_token
        ]);
        return response()->json([
            'message' => 'Successfully Updated FCM Token'
        ],200);
    }
}
