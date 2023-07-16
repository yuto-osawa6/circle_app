import 'dart:convert';

import 'package:circle_app/controller/group_chat_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:web_socket_channel/io.dart';

class GroupChatPage2 extends HookConsumerWidget {
  final int groupChatId;
  // final String userId;

  GroupChatPage2({required this.groupChatId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _UserState = ref.watch(UserProvider);
    // final groupIdStateNotifier = ref.watch(groupIdProvider.notifier);
    // final groupChatListState = ref.watch(groupChatListProvider(groupChatId));
    if (_UserState.id == null) {
      return Container();
    }

    final _channel = useState(IOWebSocketChannel.connect(
        'ws://192.168.2.101:8080/ws/${groupChatId}/${_UserState.id}'));


    useEffect(() {
      final channel = _channel.value;
      channel.sink.add("最初のメッセージ");
       // WebSocketから新しいメッセージを受信したら、リストに追加する
      channel.stream.listen((message) {
        print("aa:${message}");
        final newMessage = GroupChat.fromJson(json.decode(message));
        print(newMessage);
        // ref.read(groupChatListProvider(groupChatId).notifier).addMessage(newMessage);
        ref.read(groupChatProvider2(groupChatId).notifier).addMessage(newMessage);
      });

      return () {
        channel.sink.close();
        // channel.stream.drain();
      };
    }, []);

    // text controller
    final _textEditingController = useTextEditingController();
    // ref
    final userState = ref.watch(UserProvider);

    void _sendMessage() {
      // print()
      final message = GroupChatContentCreate(
          group_id: groupChatId,
          user_id: userState.id!,
          content_type: "text",
          text_content: _textEditingController.text);
      print(message);
      print("aaa");
      ref
          .read(groupCreateProvider.notifier)
          .createGroupChat(groupChatId, message);
      _textEditingController.clear();
    }

    // print(groupChatListState);

    final scrollController = useScrollController();
    final groupChatState = ref.watch(groupChatProvider2(groupChatId));
    final notifier = ref.watch(groupChatProvider2(groupChatId).notifier);

     // 初回起動時にデータを取得
    useEffect(() {
      notifier.fetchData();
    }, []);

    useEffect(() {
      print("fetchdata groupchat");
      //  print(scrollController.position.pixels);
      // print(scrollController.position.maxScrollExtent);
    scrollController.addListener(() {
      print("fetchdata groupchat");
      print(scrollController.position.pixels);
      print(scrollController.position.maxScrollExtent);

      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {

        if(notifier.isLoading == false){
          notifier.fetchData(); // スクロールの最後に到達したら追加のデータ取得を行う
        }
        print("fetchdata groupchat2");
      }
    });
  }, [scrollController]);

    return Column(
      children: [
      Expanded(
            child: ListView.builder(
            key: ValueKey(groupChatState.length), // キーを追加
            controller: scrollController,
            reverse: true,
            // itemCount: groupChatState.value.length + 1,
            itemCount: groupChatState.length + (notifier.isLoading ? 0 : 1),
            itemBuilder: (context, index) {
              if (index == groupChatState.length) {
                // 最後の要素までスクロールした場合
                if (groupChatState.isEmpty) {
                  // データがない場合の表示
                  return Center(child: Text('No data available'));
                } else if(notifier.isLoading == false) {
                  // ローディングインジケータを表示
                  return SizedBox(
                    height: 50,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }else{
                  // check1 これいらない。groupChatState.length + (notifier.isLoading ? 0 : 1),ここでそれ以外を排除してるため。
                  return Center(child: Text('No data available')); 
                }
              }
              return ListTile(
                title: Text("${groupChatState[index].id}:${groupChatState[index].content!.text_content!}"),
              );
            },
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: 'メッセージを入力',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: _sendMessage,
            ),
          ],
        ),
      ],
    );
  }
}
