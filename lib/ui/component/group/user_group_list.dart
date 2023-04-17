import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final groupList = ref.watch(getUserGroupFutureProvider2(page.value)).family;
//     // final page = useState(1);
//     final groupList = ref.watch(getUserGroupFutureProvider2);
//     final page = ref.watch(pageUserGroupProvider.notifier);

//     useEffect(() {
//       ref.read(pageUserGroupProvider.notifier).setPage(1);
//       return () {
//         ref.read(pageUserGroupProvider.notifier).setPage(1);
//       };
//     }, []);

//     return Expanded(
//       // child:Text("aaa")
//       child: groupList.when(
//         data: (data) {
//           return ListView.builder(
//             itemCount: data!.groups.length + 1, // 1つ分増やしておく
//             itemBuilder: (context, index) {
//               if (index < data!.groups.length) {
//                 // 通常のグループ情報を表示する
//                 final group = data.groups[index];
//                 return ListTile(
//                   title: Text(group.name),
//                   // subtitle: Text(group.),
//                 );
//               } else if (index == data.groups.length) {

//                 // ローディングインジケータを表示する
//                 return Center(child: CircularProgressIndicator());
//               } else {
//                 // ローディングインジケータを表示する
//                 return Center(child: CircularProgressIndicator());
//               }
//             },
//           );
//         },
//         loading: () => Center(
//           child: CircularProgressIndicator(),
//         ),
//         error: (error, stackTrace) => Center(
//           child: Text('エラーが発生しました。'),
//         ),
//       ),
//     );
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final groupList = ref.watch(getUserGroupFutureProvider2);
//     final page = ref.watch(pageUserGroupProvider);

//     useEffect(() {
//       // Reset the page number to 1 when the component mounts or refreshes
//       ref.read(pageUserGroupProvider.notifier).setPage(1);
//       return () {
//         // Reset the page number to 1 when the component unmounts
//         ref.read(pageUserGroupProvider.notifier).setPage(1);
//       };
//     }, []);

//     // Fetch new data when the user scrolls to the bottom of the list
//     final scrollController = useScrollController();
//     useEffect(() {
//       void _scrollListener() {
//         if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//             !scrollController.position.outOfRange) {
//           ref.read(pageUserGroupProvider.notifier).incrementPage();
//         }
//       }

//       scrollController.addListener(_scrollListener);
//       return () {
//         scrollController.removeListener(_scrollListener);
//       };
//     }, []);

//     return Expanded(
//       child: groupList.when(
//         data: (data) {
//           // Display the group list
//           return ListView.separated(
//             controller: scrollController,
//             separatorBuilder: (context, index) => Divider(),
//             // itemCount: data!.groups.length + (data.hasMore ? 1 : 0),
//             addAutomaticKeepAlives: true,
//             itemCount: data!.groups.length +1,
//             itemBuilder: (context, index) {
//               if (index < data.groups.length) {
//                 final group = data.groups[index];
//                 return ListTile(
//                   key: ValueKey(group.id),
//                   title: Text(group.name),
//                   // addAutomaticKeepAlives: true,
//                 );
//                 // return AutomaticKeepAlive(
//                 //   child: ListTile(
//                 //     title: Text(group.name),
//                 //   ),
//                 // );
//               } else if (index == data!.groups.length && data!.groups.length != 0) {
//                 // Display a loading indicator when fetching new data
//                 return Center(child: CircularProgressIndicator());
//               } else {
//                 // Display a message when all data has been loaded
//                 return Center(child: Text('すべてのデータが読み込まれました。'));
//               }
//             },
//           );
//         },
//         loading: () => Center(child: CircularProgressIndicator()),
//         error: (error, stackTrace) => Center(child: Text('エラーが発生しました。')),
//       ),
//     );
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final groupList = ref.watch(getUserGroupFutureProvider2);
//     final page = ref.watch(pageUserGroupProvider);

//     useEffect(() {
//       // Reset the page number to 1 when the component mounts or refreshes
//       ref.read(pageUserGroupProvider.notifier).setPage(1);
//       return () {
//         // Reset the page number to 1 when the component unmounts
//         ref.read(pageUserGroupProvider.notifier).setPage(1);
//       };
//     }, []);

//     // Fetch new data when the user scrolls to the bottom of the list
//     final scrollController = useScrollController();
//     useEffect(() {
//       void _scrollListener() {
//         if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//             !scrollController.position.outOfRange) {
//           ref.read(pageUserGroupProvider.notifier).incrementPage();
//         }
//       }

//       scrollController.addListener(_scrollListener);
//       return () {
//         scrollController.removeListener(_scrollListener);
//       };
//     }, []);

//     return Expanded(
//       child: groupList.when(
//         data: (data) {
//           // Display the group list
//           return ListView.separated(
//             controller: scrollController,
//             separatorBuilder: (context, index) => Divider(),
//             // itemCount: data!.groups.length + (data.hasMore ? 1 : 0),
//             addAutomaticKeepAlives: true,
//             itemCount: data!.length +1,
//             itemBuilder: (context, index) {
//               if (index < data.length) {
//                 final group = data[index];
//                 return ListTile(
//                   key: ValueKey(group.id),
//                   title: Text(group.name),
//                   // addAutomaticKeepAlives: true,
//                 );
//                 // return AutomaticKeepAlive(
//                 //   child: ListTile(
//                 //     title: Text(group.name),
//                 //   ),
//                 // );
//               } else if (index == data!.length && data!.length != 0) {
//                 // Display a loading indicator when fetching new data
//                 return Center(child: CircularProgressIndicator());
//               } else {
//                 // Display a message when all data has been loaded
//                 return Center(child: Text('すべてのデータが読み込まれました。'));
//               }
//             },
//           );
//         },
//         loading: () => Center(child: CircularProgressIndicator()),
//         error: (error, stackTrace) => Center(child: Text('エラーが発生しました。')),
//       ),
//     );
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final groupList = ref.watch(getUserGroupFutureProvider2);
//     final page = ref.watch(pageUserGroupProvider);

//     // useEffect(() {
//     //   // Reset the page number to 1 when the component mounts or refreshes
//     //   ref.read(pageUserGroupProvider.notifier).setPage(1);
//     //   return () {
//     //     // Reset the page number to 1 when the component unmounts
//     //     ref.read(pageUserGroupProvider.notifier).setPage(1);
//     //   };
//     // }, []);

//     // Fetch new data when the user scrolls to the bottom of the list
//     final scrollController = useScrollController();
//     useEffect(() {
//       print("スクロールリスナー実行されました");
//       void _scrollListener() {
//         if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//             !scrollController.position.outOfRange) {
//           ref.read(pageUserGroupProvider.notifier).incrementPage();
//         }
//       }

//       scrollController.addListener(_scrollListener);
//       // return () {
//       //   scrollController.removeListener(_scrollListener);
//       // };
//     }, []);

//     return Expanded(
//       child: groupList.when(
//         data: (data) {
//           // Display the group list
//           return ListView.separated(
//             controller: scrollController,
//             separatorBuilder: (context, index) => Divider(),
//             itemCount: data.length + 1,
//             itemBuilder: (context, index) {
//               if (index == data.length) {
//                 if (data?.length == 0) {
//                   // Display a message when there is no data
//                   return Center(child: Text('データがありません。'));
//                 } else {
//                   // Display a loading indicator when fetching new data
//                   return Center(child: CircularProgressIndicator());
//                 }
//               } else {
//                 final group = data[index];
//                 return ListTile(
//                   key: ValueKey(group.id),
//                   title: Text(group.name),
//                 );
//               }
//             },
//           );
//         },
//         loading: () => Center(child: CircularProgressIndicator()),
//         error: (error, stackTrace) => Center(child: Text('エラーが発生しました。')),
//       ),
//     );
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final scrollController = useScrollController();

//     final data = ref.watch(getUserGroupFutureProvider2);
//     final pageNotifier = ref.watch(pageUserGroupProvider.notifier);

//     useEffect(() {
//       ref.read(pageUserGroupProvider.notifier).setPage(1);
//     }, []);

//     useEffect(() {
//       void _scrollListener() {
//         if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//             !scrollController.position.outOfRange) {
//           ref.read(pageUserGroupProvider.notifier).incrementPage();
//         }
//       }

//       scrollController.addListener(_scrollListener);
//       return () {
//         scrollController.removeListener(_scrollListener);
//       };
//     }, [scrollController]);

//     return Expanded(
//       child:data.when(
//       data: (data) {
//         return ListView.builder(
//           controller: scrollController,
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return ListTile(title: Text("${data[index].id}"));
//           },
//         );
//       },
//       loading: () => CircularProgressIndicator(),
//       error: (error, stackTrace) => Text('An error occurred: $error'),
//     ));
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final scrollController = useScrollController();

//     final data = ref.watch(getUserGroupFutureProvider2);
//     final page = ref.watch(pageUserGroupProvider);
//     final pageNotifier = ref.watch(pageUserGroupProvider.notifier);

//     useEffect(() {
//       ref.read(pageUserGroupProvider.notifier).setPage(1);
//     }, []);

//     // スクロール位置を保存する
//   //   double? savedScrollOffset;
//   //   useEffect(() {
//   //    if (data is AsyncData<List<Group>> && savedScrollOffset != null) {
//   //   final oldDataLength = data.value.length;
//   //   final newPosition =
//   //       (oldDataLength / (oldDataLength + data.value.length)) * savedScrollOffset!;
//   //   scrollController.jumpTo(newPosition);
//   // }
//   //   });

//     // useEffect(() {
//     //   void _scrollListener() {
//     //     if (scrollController.offset >= scrollController.position.maxScrollExtent &&
//     //         !scrollController.position.outOfRange) {
//     //       ref.read(pageUserGroupProvider.notifier).incrementPage();
//     //     }
//     //   }

//     //   scrollController.addListener(_scrollListener);
//     //   return () {
//     //     scrollController.removeListener(_scrollListener);
//     //   };
//     // }, [scrollController]);

//     return Expanded(
//       child:NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//              ref.read(pageUserGroupProvider.notifier).incrementPage();
//           }
//           return true;
//         },
//       child:data.when(
//       data: (data) {
//         // savedScrollOffset = scrollController.offset;
//         return ListView.builder(
//           controller: scrollController,
//           itemCount: data.length + 1,
//           itemBuilder: (context, index) {
//             // return ListTile(title: Text("${data[index].id}"));
//             if (index == data.length) {
//                   // スクロールが最大値に達したら、次のページ番号で新しいデータを取得する
//                   ref.read(pageUserGroupProvider.notifier).incrementPage();
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//               }
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//         );
//       },
//       loading: () => CircularProgressIndicator(),
//       error: (error, stackTrace) => Text('An error occurred: $error'),
//     ))
//     );
//   }
// }

// final scrollProvider = ChangeNotifierProvider.autoDispose((ref) => ScrollState());

// class ScrollState extends ChangeNotifier {
//   int _itemCount = 0;
//   int _pageNumber = 1;

//   int get itemCount => _itemCount;
//   int get pageNumber => _pageNumber;

//   Future<void> incrementItemCount() async {
//     await Future.delayed(Duration(milliseconds: 100)); // 遅延させる
//     _itemCount += 20;
//     _pageNumber++;
//     notifyListeners();
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final userGroups = ref.watch(userGroupListProvider);

//     final scrollState = ref.watch(scrollProvider);

//     useEffect(() {
//       if (scrollState.itemCount == 0) {
//         scrollState.incrementItemCount();
//       }
//       return null;
//     }, [scrollState]);

//     useEffect(() {
//       // 初回
//       if (scrollState.itemCount == 0) {
//         print("aaa");
//       ref.read(getUserGroupFutureProvider2);
//       }
//     //  ref.read(getUserGroupFutureProvider2);
//     }, []);

//     print(userGroups);

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             scrollState.incrementItemCount();
//             print("aaa4");
//             ref.read(pageUserGroupProvider.notifier).incrementPage();
//           }
//           return true;
//         },
//         child: ListView.builder(
//           itemCount: userGroups.length + 1,
//           itemBuilder: (context, index) {
//             if (index == userGroups.length) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return ListTile(
//               title: Text("${userGroups[index].id}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// final scrollProvider = ChangeNotifierProvider.autoDispose((ref) => ScrollState());

// class ScrollState extends ChangeNotifier {
//   int _itemCount = 0;
//   int _pageNumber = 1;

//   int get itemCount => _itemCount;
//   int get pageNumber => _pageNumber;

//   Future<void> incrementItemCount() async {
//     await Future.delayed(Duration(milliseconds: 100)); // 遅延させる
//     _itemCount += 20;
//     _pageNumber++;
//     notifyListeners();
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final userGroups = ref.watch(userGroupListProvider);

//     final scrollState = ref.watch(scrollProvider);

//     final getUser = ref.watch(getUserGroupFutureProvider2);

//     useEffect(() {
//       if (scrollState.itemCount == 0) {
//         scrollState.incrementItemCount();
//       }
//       return null;
//     }, [scrollState]);

//     // useEffect(() {
//     //   // 初回
//     //   if (scrollState.itemCount == 0) {
//     //     print("aaa");
//     //   ref.read(getUserGroupFutureProvider2);
//     //   }
//     // //  ref.read(getUserGroupFutureProvider2);
//     // }, []);

//     print("length:${userGroups.length}");

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             scrollState.incrementItemCount();
//             print("aaa4");
//             ref.read(pageUserGroupProvider.notifier).incrementPage();
//           }
//           return true;
//         },
//         child: ListView.builder(
//           itemCount: userGroups.length + 1,
//           itemBuilder: (context, index) {
//             if (index == userGroups.length) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return ListTile(
//               title: Text("${userGroups[index].id}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final page = ref.watch(pageUserGroupProvider);
//     // final groups = ref.watch(userGroupListProvider);

//     final groups = ref.watch(getUserGroupFutureProvider2);

//     // ref.watch(getUserGroupFutureProvider2).when(
//     //   data: (value) {
//     //     // データがある場合、新しいグループをリストに追加する
//     //     ref.read(userGroupListProvider.notifier).addAll(value);
//     //   },
//     //   error: (error, stackTrace) {
//     //     // エラーを処理する
//     //     print(error);
//     //   },
//     //   loading: () {
//     //     // データをロード中の場合、ローディングインジケーターを表示する
//     //     return const CircularProgressIndicator();
//     //   },
//     // );

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             // scrollState.incrementItemCount();
//             // print("aaa4");
//             // ref.read(pageUserGroupProvider.notifier).incrementPage();
//             ref.read(pageUserGroupProvider.notifier).incrementPage();
//           }
//           return true;
//         },
//     child:ListView.builder(
//       itemCount: groups.length,
//       itemBuilder: (context, index) {
//         // グループを表示する
//         final group = groups[index];
//         return ListTile(
//           title: Text(group.name),
//           subtitle: Text("${group.id}"),
//         );
//       },
//       // スクロール位置に応じてページ番号を更新する
//       // onNotification: (notification) {
//       //   if (notification is ScrollEndNotification &&
//       //       notification.metrics.pixels ==
//       //           notification.metrics.maxScrollExtent) {
//       //     ref.read(pageUserGroupProvider.notifier).incrementPage();
//       //   }
//       //   return true;
//       // },
//     )));
//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final page = ref.watch(pageUserGroupProvider);
//     // final groups = ref.watch(userGroupListProvider);

//     final groups = ref.watch(getUserGroupFutureProvider2);

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             // scrollState.incrementItemCount();
//             // print("aaa4");
//             // ref.read(pageUserGroupProvider.notifier).incrementPage();
//             ref.read(pageUserGroupProvider.notifier).incrementPage();
//           }
//           return true;
//         },
//     child:groups.when(
//       data: (data) {
//         return ListView.builder(
//       itemCount: data.length,
//       itemBuilder: (context, index) {
//         // グループを表示する
//         final group = data[index];
//         return ListTile(
//           title: Text(group.name),
//           subtitle: Text("${group.id}"),
//         );
//       },

//     );},
//       loading: () => CircularProgressIndicator(),
//       error: (error, stackTrace) => Text('An error occurred: $error'),
//     ),
//     ));

//   }
// }

// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final page = ref.watch(pageUserGroupProvider);
//     final groups = ref.watch(userGroupListProvider);
//     final groupsBool = ref.watch(userGroupListboolProvider);

//     useEffect(() {
//       print("rararai2");
//       ref.read(userGroupListProvider.notifier).getUserGroup(context);
//     }, [page]); // pageが変更されたときにgetUserGroupを呼び出す

//     int itemCount = groups.length + 1;

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             final groupsNotifier = ref.watch(userGroupListProvider.notifier);
//             // final loadingProvider = ref.read(userGroupLoadingProvider);
//             // final loadingProvider2 = ref.read(pageUserGroupProvider);

//             // final loadingProviderNotifier = ref.read(pageUserGroupProvider.notifier);

//             if (! groupsNotifier.isLoading&& !groupsBool) {
//               groupsNotifier.setLoading(true);
//               print("rararai");
//               ref.read(pageUserGroupProvider.notifier).incrementPage(context);
//             }
//           }
//           return true;
//         },
//         child: ListView.builder(
//           itemCount: itemCount, // 最後の要素である場合、オフセットが必要
//           itemBuilder: (context, index) {
//             if (index == groups.length) {
//               if (groups.isEmpty) {
//                 return Container();
//               }
//               if (groupsBool) {
//                 return Container();
//               }
//               // 最後の要素の場合、プログレスインジケータを表示する
//               return Center(child: CircularProgressIndicator());
//             }
//             final group = groups[index];
//             return ListTile(
//               title: Text(group.name),
//               subtitle: Text("${group.id}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final page = ref.watch(pageUserGroupProvider);
//     final groups = ref.watch(userGroupListProvider);
//     final groupsBool = ref.watch(userGroupListboolProvider);

//     useEffect(() {
//       print("rararai2");
//       ref.read(userGroupListProvider.notifier).getUserGroup(context);
//     }, [page]); // pageが変更されたときにgetUserGroupを呼び出す

//     int itemCount = groups.length + 1;

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             final groupsNotifier = ref.watch(userGroupListProvider.notifier);

//             final loadingProvider = ref.read(userGroupLoadingProvider.notifier);
//             // final loadingProvider2 = ref.read(pageUserGroupProvider);
//             final isLoading = ref.watch(userGroupLoadingProvider);


//             // final loadingProviderNotifier = ref.read(pageUserGroupProvider.notifier);

//             // if (! loadingProviderNotifier.isLoading&& !groupsBool) {
//             if (! isLoading&& !groupsBool) {
//               // loadingProvider.state = true;
//               // groupsNotifier.setLoading(true);
//               print("rararai");
//               ref.read(pageUserGroupProvider.notifier).incrementPage();
//             }

//             // if (! groupsNotifier.isLoading&& !groupsBool) {
//             //   // groupsNotifier.setLoading(true);
//             //   print("rararai");
//             //   ref.read(pageUserGroupProvider.notifier).incrementPage(context);
//             // }
//           }
//           return true;
//         },
//         child: ListView.builder(
//           itemCount: itemCount, // 最後の要素である場合、オフセットが必要
//           itemBuilder: (context, index) {
//             if (index == groups.length) {
//               if (groups.isEmpty) {
//                 return Container();
//               }
//               if (groupsBool) {
//                 return Container();
//               }
//               // 最後の要素の場合、プログレスインジケータを表示する
//               return Center(child: CircularProgressIndicator());
//             }
//             final group = groups[index];
//             return ListTile(
//               title: Text(group.name),
//               subtitle: Text("${group.id}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final page = ref.watch(pageUserGroupProvider);
//     final groups = ref.watch(userGroupListProvider);
//     final groupsBool = ref.watch(userGroupListboolProvider);


//     useEffect(() {
//       print("rararai2");
//       ref.read(userGroupListProvider.notifier).getUserGroup(context);
//     }, [page]); // pageが変更されたときにgetUserGroupを呼び出す

//     int itemCount = groups.length + 1;

    

//     return Expanded(
//       child: NotificationListener<ScrollNotification>(
//         onNotification: (ScrollNotification scrollInfo) {
//           if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
//             final groupsNotifier = ref.watch(userGroupListProvider.notifier);

//             final loadingProvider = ref.read(userGroupLoadingProvider.notifier);
//             // final loadingProvider2 = ref.read(pageUserGroupProvider);
//             final isLoading = ref.watch(userGroupLoadingProvider);


//             // final loadingProviderNotifier = ref.read(pageUserGroupProvider.notifier);

//             // if (! loadingProviderNotifier.isLoading&& !groupsBool) {
//             if (! isLoading&& !groupsBool) {
//               // loadingProvider.state = true;
//               // groupsNotifier.setLoading(true);
//               print("rararai");
//               ref.read(pageUserGroupProvider.notifier).incrementPage();
//             }

//             // if (! groupsNotifier.isLoading&& !groupsBool) {
//             //   // groupsNotifier.setLoading(true);
//             //   print("rararai");
//             //   ref.read(pageUserGroupProvider.notifier).incrementPage(context);
//             // }
//           }
//           return true;
//         },
//         child: ListView.builder(
//           itemCount: itemCount, // 最後の要素である場合、オフセットが必要
//           itemBuilder: (context, index) {
//             if (index == groups.length) {
//               if (groups.isEmpty) {
//                 return Container();
//               }
//               if (groupsBool) {
//                 return Container();
//               }
//               // 最後の要素の場合、プログレスインジケータを表示する
//               return Center(child: CircularProgressIndicator());
//             }
//             final group = groups[index];
//             return ListTile(
//               title: Text(group.name),
//               subtitle: Text("${group.id}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   static const _pageSize = 20;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final pagingController = ref.watch(characterListProvider);

//     return PagedListView<int, Group>(
//       pagingController: pagingController.data!,
//       builderDelegate: PagedChildBuilderDelegate<CharacterSummary>(
//         itemBuilder: (context, item, index) => CharacterListItem(
//           character: item,
//         ),
//       ),
//     );
//   }
// }

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// class UserGroupsList extends HookConsumerWidget {
//   const UserGroupsList({Key? key}) : super(key: key);

//   static const _pageSize = 20;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final PagingController<int, Group> pagingController = ref.watch(characterListProvider);

//     return PagedListView<int, Group>(
//       pagingController: pagingController.requireData(),
//       builderDelegate: PagedChildBuilderDelegate<Group>(
//         itemBuilder: (context, item, index){
//           return Text("aa");
//         }
//       ),
//     );
//   }
// }

class UserGroupsList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PagingController = ref.watch(groupListProvider);

    return 
    Expanded(child:PagedListView<int, Group>(
      pagingController: PagingController,
      builderDelegate: PagedChildBuilderDelegate<Group>(
        // itemBuilder: (context, item, index) => GroupListItem(
        //   group: item,
        // ),
        itemBuilder: (context, item, index){
          return ListTile(
            title: Text("${item.id}"),
            subtitle: Text(item.name),
            onTap: () {
              // Navigator.pushNamed(context, '/group/:id', arguments: {'id': item.id});
              Navigator.pushNamed(context, '/groupShow', arguments: {'id': item.id});

            //   Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => GroupShowPage(id:item.id)),
            // );
            },
          );
        }
      ),
    )
    
    );
    
  }
}