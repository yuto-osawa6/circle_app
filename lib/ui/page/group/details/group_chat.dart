import 'package:circle_app/controller/group_chat_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/io.dart';

class GroupChatPage extends HookConsumerWidget {
  final int groupChatId;
  // final String userId;

  GroupChatPage({required this.groupChatId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _UserState = ref.watch(UserProvider);
    if(_UserState.id == null){
      return Container();
    }

    // final _channel = useState(IOWebSocketChannel.connect(
    //     'ws://localhost:8080/ws/${groupChatId}/${_UserState.id}'));
    // final headers = {'Authorization': 'Bearer <token>'};
    // final _channel = useState(IOWebSocketChannel.connect(
    //     // 'ws://localhost:8080/ws'));

    final _channel = useState(IOWebSocketChannel.connect(
        // 'ws://localhost:8080/ws'));
        'ws://localhost:8080/ws/${groupChatId}/${_UserState.id}'));


        // 'ws://localhost:8080/ws/', headers: headers));


    useEffect(() {
      final channel = _channel.value;
      channel.sink.add("最初のメッセージ");
      return () {
        channel.sink.close();
        channel.stream.drain();
      };
    }, []);

    // return StreamBuilder(
    //   stream: _channel.value.stream,
    //   builder: (BuildContext context, AsyncSnapshot snapshot) {
    //     if (snapshot.hasData) {
    //       // final data = snapshot.data as List<dynamic>;
    //       final data = snapshot.data as String;

    //       return Text(data);
    //       // return ListView.builder(
    //       //   itemCount: data.length,
    //       //   itemBuilder: (BuildContext context, int index) {
    //       //     return ListTile(
    //       //       title: Text(data[index]),
    //       //     );
    //       //   },
    //       // );
    //     } else {
    //       return Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //   },
    // );

    // text controller
    final _textEditingController = useTextEditingController();
    // ref
    final userState = ref.watch(UserProvider);

    void _sendMessage() {
      // print()
      final message =GroupChatContentCreate(groupId:groupChatId,userId:userState.id! ,contentType:"text",textContent: _textEditingController.text);
      print(message);
      ref.read(groupCreateProvider.notifier).createGroupChat(groupChatId, message);
      _textEditingController.clear();
    }

    return Column(
      children: [
        Expanded(
          child: StreamBuilder(
            stream: _channel.value.stream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data as String;

                return Text(data);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
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