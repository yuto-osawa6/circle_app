import 'package:circle_app/model/api/group/group.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketManager extends StateNotifier<List<WebSocketChannel>> {
  WebSocketManager() : super([]);

  void connectWebSocket(List<Group> groups, String userId) {
    final url = 'ws://192.168.2.101:8080/ws'; // WebSocketサーバーのURLを適切に設定する
    // final channel = IOWebSocketChannel.connect('$url/$groupChatId/$userId');
    final channels = groups.map((group) {
      final channels = IOWebSocketChannel.connect('$url/${group.id}/$userId');
      channels.stream.listen((message) {
        // メッセージを受信した際の処理をここに記述する
        print('Received message: $message');
      });
      return channels;
    }).toList();
    state = channels;
  }

  void disconnectWebSocket() {
    state.forEach((channel) => channel.sink.close());
    state = [];
  }
}

final webSocketManagerProvider = StateNotifierProvider<WebSocketManager, List<WebSocketChannel>>(
  (_) => WebSocketManager(),
);