
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
          // title:const Text("Talk"),
        ),
          backgroundColor:Colors.grey[200],
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        // BoxShadow(
                        //   color: Color.fromARGB(50, 0, 0, 0), //色
                        //   spreadRadius: 1, 
                        //   blurRadius: 10, 
                        //   offset: Offset(5, 10),
                        // ),
                      ],
                    ),
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child:Align(
                  // padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                    child:Text(
                    // AppLocalizations.of(context)!.appName,
                    "認証メールを送信しました。!adftfg",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30,fontFamily: "Noto_Sans_JP"),
                    )
                  ),
                ),
                
              ]
            ),
          ),
        )
      // )
    );
  }
}