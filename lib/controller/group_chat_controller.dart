import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group/group_create.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:circle_app/model/api/group_chat/group_chat_content_create.dart';
import 'package:circle_app/repository/group.dart';
import 'package:circle_app/repository/group_chat.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:circle_app/model/api/group/user_groups.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// create 
class GroupCreateNotifier extends StateNotifier {
  final GroupChatRepository _groupChatRepository;

  GroupCreateNotifier(this._groupChatRepository,this.ref) : super(null);
  Ref ref;
  Future<void> createGroupChat(int groupId, GroupChatContentCreate body) async {
    final getGroupsLatestChatNotifier = ref.read(GetGroupsLatestChatProvider.notifier);

    // print("aa");
    print(body);
    // state = GroupChatContentCreate.loading();
    final result = await _groupChatRepository.fetchCreateGroupChatContent(groupId, body);
    print(result);
    print("aa34");
    result.when(success: (data) {
      print("aa23");
      print(data);
      getGroupsLatestChatNotifier.addNewMessageToState(data);
      // addNewMessageToState(data);
      // state = data;
    }, failure: (error) {
      print(error);
      print("aa2");
      // state = GroupChatContentCreate.error(error.toString());
    });
  }
}

final groupCreateProvider = StateNotifierProvider(
  (ref) => GroupCreateNotifier(ref.read(GroupChatRepostitoryProvider),ref),
);

// repository
final GroupChatRepostitoryProvider =
    Provider((ref) => GroupChatRepository());




//  chat page controller


// final groupChatListProvider =
//     StateNotifierProvider<GroupChatListNotifier, PagingController<int, GroupChat>>(
//         (ref) => GroupChatListNotifier(ref),
// );
// final groupChatListProvider = StateNotifierProvider.family<
//   GroupChatListNotifier, 
//   int, // 追加
//   PagingController<int, GroupChat>>((ref, groupId) => 
//     GroupChatListNotifier(ref, groupId)
// );

// final groupChatListProvider = StateNotifierProvider.family<
//   GroupChatListNotifier,
//   int,
//   PagingController<int, GroupChat>>((ref, groupId) =>
//     GroupChatListNotifier(ref, groupId));

// final groupChatListProvider = StateNotifierProvider.family
//     <GroupChatListNotifier, int>((ref, groupId) => GroupChatListNotifier(ref, groupId));

final groupChatListProvider = StateNotifierProvider.family<GroupChatListNotifier, PagingController<int, GroupChat>,int>(
  (ref,groupId) {
    return GroupChatListNotifier(ref,groupId);
  },
);




final groupIdProvider = StateNotifierProvider<GroupChatIdNotifier, int?>((ref) => GroupChatIdNotifier());

class GroupChatIdNotifier extends StateNotifier<int?> {
  GroupChatIdNotifier() : super(null);
  
  void setGroupId(int groupId) {
    state = groupId;
  }
}

class GroupChatListNotifier extends StateNotifier<PagingController<int, GroupChat>> {
  static const _pageSize = 10;
  final int groupId;

  GroupChatListNotifier(this.ref,this.groupId) : super(PagingController(firstPageKey: 1)) {
    state.addPageRequestListener((pageKey) {
      print("_fetchPage(pageKey);");
      _fetchPage(pageKey);
    });
  }
  // GroupChatListNotifier(this.ref,this.groupId, [PagingController<int, GroupChat>? controller])
  //     : super(controller ?? PagingController(firstPageKey: 1)) {
  //   state.addPageRequestListener((pageKey) {
  //     print("_fetchPage(pageKey);");
  //    ¥(pageKey);
  //   });
  // }
  Ref ref;

  Future<void> addGroup(GroupChat group) async {
    if (state.nextPageKey != null) {
    }
    // リストに新しいグループを追加する処理
    state.itemList?.add(group);
    // 状態を更新して、リストに新しいグループを反映
    final controller = ref.read(groupChatListProvider(groupId).notifier);
    // リストが更新されたら、PagingControllerをrefreshしてリストを更新
    controller.state.refresh();
  }

  Future<void> addMessage(GroupChat message) async {
  final items = state.itemList ?? []; // 現在のリストアイテムまたは空リストを取得
  print("state:${state}");
  // リストの先頭に新しいアイテムを追加する
  items.insert(0, message);

  // リストアイテムを更新してPagingControllerの状態を変更する
  state.itemList = items;
  state.itemList = List.of(items); // オブジェクトのコピーを渡すことで、stateを変更したことをPagingControllerに通知する
}


  Future<void> _fetchPage(int pageKey) async {
    print("_fetchPage(pageKey)2;");
    // final token = await AuthService().getCurrentUserToken();
    // final groupIdState = ref.read(groupIdProvider);
    final repository = ref.read(GroupChatRepostitoryProvider);
    try {
      // final newItems = await RemoteApi.getGroupList(pageKey, _pageSize);
      print(pageKey);
      print(groupId);
      final result = await repository.fetchGroupChats(groupId,pageKey);
      print(result);
      result.when(
        success: (value) {
          final isLastPage = value.length < _pageSize;
          print(isLastPage);
          print(value.length);
          if (isLastPage) {
            state.appendLastPage(value);
          } else {
            final nextPageKey = pageKey + 1;
            state.appendPage(value, nextPageKey);
          }
        },
        failure: (error) {
          print(error);
          print("error2");

        },
      );
    } catch (error) {
      // error = error;
      print(error);
      print("error");
    }
  }

  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}


// group_chat conroller 2

// final GroupChatProvider2 =
//     StateNotifierProvider.autoDispose<GroupChatListNotifier2, GroupChat>(
//   () => GroupChatListNotifier2(),
// );

final groupChatProvider2 = StateNotifierProvider.family<GroupChatListNotifier2, List<GroupChat>,int>(
  (ref,groupId) => GroupChatListNotifier2(ref,groupId),
);



class GroupChatListNotifier2 extends StateNotifier<List<GroupChat>> {
  GroupChatListNotifier2(this.ref,this.groupId) : super([]); // GroupChatの初期値を設定
  Ref ref;
  final int groupId;
  final dataList = <String>[]; // リストデータを保持する変数
  bool isLoading = false; // ローディングフラグ（APIコール中かどうかを示す）
  int page = 1; // ページ番号

  Future<void> addMessage(GroupChat message) async {
    final items = state ?? []; // 現在のリストアイテムまたは空リストを取得
    print("state:${state}");
    // リストの先頭に新しいアイテムを追加する
    items.insert(0, message);
    // state = items; 
    state = List.from(items); // リストのコピーを作成して状態を更新する

    // リストアイテムを更新してPagingControllerの状態を変更する
    // state.itemList = items;
    // state.itemList = List.of(items); // オブジェクトのコピーを渡すことで、stateを変更したことをPagingControllerに通知する
  }

  Future<void> fetchData() async {
    final repository = ref.read(GroupChatRepostitoryProvider);
    if (!isLoading) {
      isLoading = true;
      print("fetchdata groupchat22");

      // // データの取得処理（API呼び出しやデータベースクエリなど）
      // // 例: 仮にダミーデータを追加する場合
      // await Future.delayed(Duration(seconds: 2)); // ダミーのAPIレスポンスを待機
      // final newData = List<String>.generate(10, (index) => 'Item ${dataList.length + index + 1}');

      // dataList.addAll(newData);
        try {
      // final newItems = await RemoteApi.getGroupList(pageKey, _pageSize);
      // print(pageKey);
      // print(groupId);
      final result = await repository.fetchGroupChats(groupId,page);
      print(result);
      result.when(
        success: (value) {
          // final isLastPage = value.length < _pageSize;
          // print(isLastPage);
          print(value.length);
          // state = [...state, ...value];
          state = List.from(state)..addAll(value);
          //  state = [...value, ...state];
          
          if(value.length < 30){
            print("10以下");
          }else{
            page++;
            isLoading = false;
            // isLoading = false;
          }
          // if (isLastPage) {
          //   // state.appendLastPage(value);
          // } else {
          //   // final nextPageKey = pageKey + 1;
          //   // state.appendPage(value, nextPageKey);
          // }
        },
        failure: (error) {
          print(error);
          print("error2");

        },
      );
    } catch (error) {
      // error = error;
      print(error);
      print("error");
    }
      // page++;
      // isLoading = false;
    }
  }
}



// final totalGroupChatContentCountProvider = Provider<int>((ref) {
//   // 初期値はここで指定
//   return 0;
// });

final groupChatNewListProvider = StateNotifierProvider<GroupChatNewListStateNotifier, Map<int, List<GroupChat>>>(
  (ref) => GroupChatNewListStateNotifier(),
);

// 新規メッセージをリスト保存
class GroupChatNewListStateNotifier extends StateNotifier<Map<int, List<GroupChat>>> {
  GroupChatNewListStateNotifier() : super({});

  // totalGroupChatContentCount() の変更通知用のNotifier
  // final Notifier<int> _totalGroupChatContentCountNotifier;
  // final _totalGroupChatContentCountNotifier= Notifier<int>(0); 

  // リストに新しいグループチャットを追加する
  void addGroupChat(GroupChat groupChat) {
    // check1 nullが返されたらエラーが起きる。
    final groupId = groupChat.group_id!;
    final groupChatId = groupChat.content?.id;

    // groupChat.content.group_chat_id が既存のデータに存在する場合は追加しない
    if (state[groupId]?.any((chat) => chat.content?.id == groupChatId) ?? false) {
      return;
    }
    state = {
      ...state,
      groupId: [...(state[groupId] ?? []), groupChat],
    };

    print(totalGroupChatContentCount());
  }

  // groupChat.contentの総数を計算する
  int totalGroupChatContentCount() {
    print("totalGroupChatContentCount()");
    if (state.isEmpty) {
    return 0;
  }
    return state.values
        .expand((groupChats) => groupChats.map((chat) => chat.content))
        .length;
  }

  // グループチャットのリストを取得する 変更不可
  // List<GroupChat> getGroupChats() {
  //   // return List.unmodifiable(state);
  // }

  // 特定のグループチャットを更新する（例: メッセージを追加する）
  // void updateGroupChat(String groupId, String newMessage) {
  //   state = state.map((chat) {
  //     if (chat.id == groupId) {
  //       return GroupChat(
  //         id: chat.id,
  //         name: chat.name,
  //         messages: [...chat.messages, newMessage],
  //       );
  //     }
  //     return chat;
  //   }).toList();
  // }
}
