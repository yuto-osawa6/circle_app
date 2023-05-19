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

class GroupChatPage extends HookConsumerWidget {
  final int groupChatId;
  // final String userId;

  GroupChatPage({required this.groupChatId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _UserState = ref.watch(UserProvider);
    final groupIdStateNotifier = ref.watch(groupIdProvider.notifier);
    final groupChatListState = ref.watch(groupChatListProvider(groupChatId));
    if (_UserState.id == null) {
      return Container();
    }

    final _channel = useState(IOWebSocketChannel.connect(
        'ws://192.168.2.101:8080/ws/${groupChatId}/${_UserState.id}'));
        // 'ws://localhost:8080/ws/${groupChatId}/${_UserState.id}'));


    useEffect(() {
      // ref.read(groupIdProvider)?.state = groupChatId;
      // groupIdStateNotifier.state = groupChatId;
      final channel = _channel.value;
      channel.sink.add("最初のメッセージ");

       // WebSocketから新しいメッセージを受信したら、リストに追加する
      channel.stream.listen((message) {
        print("aa:${message}");
        final newMessage = GroupChat.fromJson(json.decode(message));
        print(newMessage);
        // groupChatListState.appendPage([newMessage], 0);
        // groupChatListState.apend
        // if (groupChatListState.itemList == null) {
        //   groupChatListState.itemList = [newMessage];
        //   groupChatListState.refresh();
        // } else {
        //   groupChatListState.itemList?.insert(0, newMessage);
        //   groupChatListState.refresh();
        // }
        ref.read(groupChatListProvider(groupChatId).notifier).addMessage(newMessage);
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

    print(groupChatListState);
    // 最初の読み込み 過去のメッセージ
    // ref.read(groupIdProvider)?.state = groupId;

    return Column(
      children: [
        // Expanded(
        //   child: StreamBuilder(
        //     stream: _channel.value.stream,
        //     builder: (BuildContext context, AsyncSnapshot snapshot) {
        //       if (snapshot.hasData) {
        //         final data = snapshot.data as String;

        //         return Text(data);
        //       } else {
        //         return Center(
        //           child: CircularProgressIndicator(),
        //         );
        //       }
        //     },
        //   ),
        // ),
      Expanded(
        child: PagedListView<int, GroupChat>(
      pagingController: groupChatListState,
      builderDelegate: PagedChildBuilderDelegate<GroupChat>(
          // itemBuilder: (context, item, index) => GroupListItem(
          //   group: item,
          // ),
          itemBuilder: (context, item, index) {
        return ListTile(
          title: Text("${item.id}"),
          subtitle: Text(item.content!.text_content!),
          onTap: () {
            print("groupShow");
            Navigator.pushNamed(context, '/group/:id',
                arguments: {'id': item.id});
            // Navigator.pushNamed(context, 'email');
            // Navigator.pushNamed(context, '/email');
            // Navigator.of(context).push(_createRoute());
          },
        );
      }),
    )),
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
