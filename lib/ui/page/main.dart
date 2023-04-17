

import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = <Widget>[
    Home(),
    GroupFrends(),
    Talk(),
    TimeLine(),
    Calendar(),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  //   final clicks = useState(0);
  //   void _onTapItem(int index) {
  //     clicks.value = index;
  // }
  // riverpodに変更
  // state（状態）
    final _NavigateActionState = ref.watch(NavigateActionProvider);
    // provider（状態の操作）
    final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);

    var descTextStyle = TextStyle(
      // color: Colors.black,
      fontWeight: FontWeight.w700,
      // fontFamily: getJugdeLanguage(context),
      fontFamily: "NotoSansJP",

      // letterSpacing: 0.5,
      // fontSize: 50.0,
    );

    //  final counter = useState(0);
    return Scaffold(
      // appBar: Header(),
      // body: _pages[_NavigateActionState.page],

      body: DefaultTextStyle.merge(
            style: descTextStyle,
            // child: Center(
              child: _pages[_NavigateActionState.page],
              // )
            ),
      
      // body: Navigator(
      //   onGenerateRoute: (settings) {
      //     Widget page = GroupFrends();
      //     if (settings.name == 'groupShow') {
      //       final id = settings.arguments as int?;
      //       page = GroupShowPage(id: id ?? 0);
      //     }
      //     return MaterialPageRoute(builder: (_) => page);
      //   },
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         AppLocalizations.of(context)!.hello("kazutxt"),
      //       ),
      //       Text(
      //         AppLocalizations.of(context)!.allow,
      //       ),
      //       Text(
      //         AppLocalizations.of(context)!.deny,
      //       ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: Footer(),
    );
  }
}