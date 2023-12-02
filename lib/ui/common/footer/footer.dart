import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Footer extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _NavigateActionState = ref.watch(NavigateActionProvider);
    final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);

    final channel = ref.read(UserWebSocketControllerProvider);


    useEffect(() {
      if (channel != null) {
        channel.sink.add("最初のメッセージ Userチャンネル");
        // WebSocketから新しいメッセージを受信したら、リストに追加する
        channel.stream.listen((message) {
          print("aa:${message}");
          // final newMessage = GroupChat.fromJson(json.decode(message));
          print(message);
          // print(newMessage);
          // ref.read(groupChatListProvider(groupChatId).notifier).addMessage(newMessage);
          // ref.read(groupChatProvider2(groupChatId).notifier).addMessage(newMessage);
        });
        return () {
        // ウィジェットが破棄されるときのクリーンアップ処理
        };
      }

    
      return null; // channelがnullの場合はクリーンアップ不要
    }, [channel]);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timeline),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delivery_dining),
          label: (''),
        ),
      ],
      currentIndex: _NavigateActionState.page, //選択中のインデックス
      onTap: _NavigateActionNotifier.onTapItem
    );
  }
}