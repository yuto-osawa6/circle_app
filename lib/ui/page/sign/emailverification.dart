
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// void emailVerification

class EmailVerificationPage extends HookConsumerWidget {
  static route() {
    return MaterialPageRoute(
      builder: (_) => EmailVerificationPage(),
    );
  }
  @override
  Widget build(BuildContext context, WidgetRef ref){
    return(
      // MaterialApp(
      // // MaterialApp(
      //   title: "afefaefea",
        // home:
        Scaffold(
          appBar: AppBar(
          title:const Text("Talk"),
        ),
          backgroundColor:Colors.grey[200],
        )
      // )
    );
  }
}