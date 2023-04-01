import 'package:circle_app/model/state/loading_circle.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:yochan/model/task_model.dart';
// import 'package:yochan/repository/task_repo.dart';

class LoadingCircleNotifier extends StateNotifier<LoadingCircleModel> {
  // 初期値の指定
  LoadingCircleNotifier() : super(LoadingCircleModel());
  void setLoaded(bool loadState) async {
    print(loadState);
    state = state.copyWith(loaded: loadState);
    print("ローディング中です。");
  }

}

final LoadingCircleProvider =
    StateNotifierProvider.autoDispose<LoadingCircleNotifier,LoadingCircleModel>(
  (ref) => LoadingCircleNotifier(),
);
