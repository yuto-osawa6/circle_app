import 'package:circle_app/main.dart';
import 'package:circle_app/main2.dart';
import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/main.dart';
import 'package:circle_app/ui/page/sign/emailverification.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubPage extends HookConsumerWidget {
  // MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // String? currentRouteName = ModalRoute.of(context).settings.name;
    final currentRouteName = ModalRoute.of(context)?.settings.name ?? 'Unknown';

    String? currentRoute;


    // useEffect((){
    //     getFooter();
    // },[currentRouteName]);

    // void footer () {
    //   if(currentRouteName == "/" ||currentRouteName == "/user_group_show"){
    //     return Footer();
    //   }
    // }
//     Widget getFooter() {
//       print(currentRouteName);
//       if (currentRouteName == "/" || currentRouteName == "/user_group_show") {
//         return Footer();
//       } else {
//         return SizedBox.shrink(); // 何も表示しない場合
//       }
//     }
//    useEffect(() {
//     currentRoute = ModalRoute.of(context)?.settings.name;
// }, [ModalRoute.of(context)?.settings.name]);
    return Scaffold(
      // body: Navigator(
      //   onGenerateRoute: (settings) {
      //     // Widget page = CircleWidget2();
      //     Widget page;
      //     print(settings.name);
      //     if (settings.name == '/user_group_show') {
      //       print("aaass");

      //       final args = settings.arguments;
      //       final id = args is int ? args : 0;
      //       page = GroupShowPage(id: id);
      //     }
      //     if (settings.name == '/email') {
      //       return MaterialPageRoute(builder: (_) => EmailVerificationPage());
      //     }
      //     else {
      //       page = MainPage();
      //     }
      //     return MaterialPageRoute(builder: (_) => page);
      //   },
      // ),
      body: MainPage(),
      // bottomNavigationBar: Footer(),
      // bottomNavigationBar: currentRoute == "/emai"? Footer():null,

      // bottomNavigationBar:  getFooter(),
     bottomNavigationBar:currentRoute == null
      ? null // nullの場合は何も表示しない
      : currentRoute == "/email"
        ? Footer()
        : SizedBox.shrink(),
    );
  }
}
