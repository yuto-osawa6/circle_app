import 'package:circle_app/model/api/user.dart';
import 'package:circle_app/model/state/navigate.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:yochan/model/task_model.dart';

// import 'package:yochan/repository/task_repo.dart';

class UserNotifier extends StateNotifier<UserModel> {
  // 初期値の指定
  UserNotifier() : super(UserModel());

  // final _pages = <Widget>[
  //   Home(),
  //   GroupFrends(),
  //   Talk(),
  //   TimeLine(),
  //   Calendar(),
  // ];

  // void onTapItem(int index) {
  //     // clicks.value = index;
  //     state = state.copyWith(page: index);
  // }

  // メインカウントを+1する
  // void increaseMainCount() async {
  //   state = state.copyWith(mainCount: state.mainCount + 1);
  // }

  // // サブカウントを+1する
  // void increaseSubCount() async {
  //   state = state.copyWith(subCount: state.subCount + 1);
  // }

  // // すべてのカウントを0に戻す
  // void resetAllCount() async {
  //   state = state.copyWith(
  //     mainCount: 0,
  //     subCount: 0,
  //   );
  // }

  void setCurrentUserEmail(String? email) async {
    state = state.copyWith(email: email);
  }

}

// HomePageNotifierの状態を管理する
final UserProvider =
    StateNotifierProvider.autoDispose<UserNotifier, UserModel>(
  (ref) => UserNotifier(),
);


// import 'package:yochan/repository/task_repo.dart';

// class UserViewModel {
//   final userRepository = UserRepository();
//   dynamic fetchUsers() async {
//     return await userRepository.fetchUsers();
//   }
// }