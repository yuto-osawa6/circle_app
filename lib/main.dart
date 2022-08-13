import 'package:circle_app/ui/page/main.dart';
import 'package:flutter/material.dart';
import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/common/header/header.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/search/search.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main(){
  runApp(ProviderScope(child:CircleWidget()));
}

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ja', ''), //日本語
        const Locale('en', ''), //英語
      ],
      title: "",
      theme: ThemeData(
        primaryColor:Colors.blue
      ),
      // home:  HomePage(title:"FlutterApp2"),
      home:  MainPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyHomePage> {
//   var _selectIndex = 0;
//   var _pages = <Widget>[
//     Home(),
//     GroupFrends(),
//     Talk(),
//     TimeLine(),
//     Calendar(),
//   ];
//     void _onTapItem(int index) {
//     setState(() {
//       _selectIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: Header(),
//       body: _pages[_selectIndex],
//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       Text(
//       //         AppLocalizations.of(context)!.hello("kazutxt"),
//       //       ),
//       //       Text(
//       //         AppLocalizations.of(context)!.allow,
//       //       ),
//       //       Text(
//       //         AppLocalizations.of(context)!.deny,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       bottomNavigationBar: Footer(now_page:_selectIndex,onTapItem: _onTapItem),
//     );
//   }
// }