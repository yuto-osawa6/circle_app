import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/model/api/group_chat/group_chat.dart';
import 'package:circle_app/model/api/user/user.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'get_user_api.freezed.dart';
part 'get_user_api.g.dart';

@freezed
class GetUserApi with _$GetUserApi {
  factory GetUserApi({
    // required String email,
    // int? id,
    // String? uid,
    // String? email,
    // String? token,
    // List<Group>? groups
    // @Default("") String email,
    //  @Default(0) int page,
    // String? title,
    // String? description,
    UserModel? user,
     @Default([]) List<GroupChat> group_chats,
  }) = _GetUserApi;

  factory GetUserApi.fromJson(Map<String, dynamic> json) => _$GetUserApiFromJson(json);
}