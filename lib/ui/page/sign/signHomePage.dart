
import 'package:circle_app/utils/style/fontstyle.dart';
import 'package:circle_app/view_model/signup/signup_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import "dart:ui"
// void emailVerification

class SignHomePage extends HookConsumerWidget {
  // static route() {
  //   return MaterialPageRoute(
  //     builder: (_) => EmailVerificationPage(),
  //   );
  // }
  @override
  Widget build(BuildContext context, WidgetRef ref){
    return(
      Scaffold(
        body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/home-2.png'),
          fit: BoxFit.cover,
        )),
        child: const Center(
          // child: Text(
          //     'ホラーゲームとかに使えそう',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 30,
          //   ),
          // ),
        ),
      )
    ));
  }
}