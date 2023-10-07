import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationHandlers {
  static void initFirebaseMessaging() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("フォアグランド");
      print(message);
      NotificationHandlers.handleMessage(message); // クラス名で直接呼び出し
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // print("バックグラウンド＆終了状態");
      NotificationHandlers.handleAppForeground(message); // クラス名で直接呼び出し
    });
    // Future<void> backgroundMessageHandler(RemoteMessage message) async {
    //   // バックグラウンドで新しいメッセージが受信されたときの処理
    //   print('バックグラウンドで新しいメッセージを受信しました: ${message.notification?.title}');
    // }
    // FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
  }
  @pragma('vm:entry-point')
  static Future<void> backgroundMessageHandler(RemoteMessage message) async {
    // バックグラウンドで新しいメッセージが受信されたときの処理
    print('バックグラウンドで新しいメッセージを受信しました: ${message.notification?.title}');
  }
  static void handleMessage(RemoteMessage message) {
    // 通知メッセージの処理
    // 例：特定の条件に応じてイベント関数を発火させる
    if (message.notification?.title == 'Important Notification') {
      handleImportantNotification(message.notification!.body);
    } else {
      handleRegularNotification(message.notification!.body);
    }
  }

  static void handleAppForeground(RemoteMessage message) {
    // バックグラウンドまたは終了状態からフォアグラウンドに戻った際の処理
    // 例：通知を受け取ったことをユーザーに表示するなど
  }

  static void handleImportantNotification(String? message) {
    // 重要な通知に対する処理
    // 例：ダイアログを表示してユーザーに重要な情報を提示する
  }

  static void handleRegularNotification(String? message) {
    // 通常の通知に対する処理
    // 例：通知を受け取ったことをユーザーに表示する
  }
}
