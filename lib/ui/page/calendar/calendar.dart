

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Calendar extends StatefulWidget {
//   const Calendar({Key? key}) : super(key: key);

//   @override
//   State<Calendar> createState() => _CalendarState();
// }

// class _CalendarState extends State<Calendar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text("Calendar"),
//       ),
//     );
//   }
// }


import 'package:circle_app/controller/group_controller.dart';
import 'package:circle_app/ui/page/sign/signup.dart';
import 'package:circle_app/ui/page/sign/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Calendar extends HookConsumerWidget {
  // const  Calendar({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    
    return 
    // MaterialApp(
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      // // locale: Locale("en"),
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: 
      Scaffold(
      body:SignUpPage(),
    );
  }
  // State<TimeLine> createState() => _TimeLineState();
}