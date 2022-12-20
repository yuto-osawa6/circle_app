

import 'dart:convert';

import 'package:circle_app/model/task.dart';
import 'package:circle_app/service/task_service.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/utils/style/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    super.initState();
    // final a = fetchUsers()
    // print(fetchUsers());
    print("aaa");
    // print("aa");
  }
  
  // print()
  Widget build(BuildContext context) {
     Locale locale = Localizations.localeOf(context);

  print(locale); 
  // var descTextStyle = TextStyle(
  //     // color: Colors.black,
  //     fontWeight: FontWeight.w700,
  //     fontFamily: getJugdeLanguage(context),
  //     // fontFamily: "NotoSansJP",

  //     // letterSpacing: 0.5,
  //     // fontSize: 50.0,
  //   );
    print(getJugdeLanguage(context));
    // print("aaaaa");
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home"),
      ),
      body: DefaultTextStyle.merge(
        style: descTextStyle,
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   // AppLocalizations.of(context)!.auth.hashCode
            // ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
            Text(
              "認証あいあいげういあふぇ",
              style: TextStyle(
                // fontFamily: 'NotoSansJP',
                // fontWeight: FontWeight.w700
              ),
            ),
            Text(
              "認証あいあいげういあふぇ",
              style: TextStyle(
                // fontFamily: 'Noto_Serif_JP',
                // fontWeight: FontWeight.w700
              ),
            ),
            
            // Text(
            //   "認証あいあいげういあふぇういあふぇ",
            //   // style: TextStyle(
            //   //   fontFamily: 'Murecho',
            //   // ),
            //   style: GoogleFonts.notoSansJavanese( // フォントをdotGothic16に指定(
            //   // textStyle: TextStyle(
            //   //   fontSize: 50,
            //   //   ),
            //   )
            // ),
            
          ],
        ),
      ),)
    );
  }
}