
import 'package:circle_app/utils/style/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import "dart:ui"
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
          body: DefaultTextStyle.merge(
          style: descTextStyle,
          // overflow: TextOverflow.ellipsis,
          child:Container(
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
                    // child:Row(
                    //   // crossAxisAlignment: CrossAxisAlignment.stretch, // この行を追記
                    //   // mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Icon(Icons.check_circle,color: Colors.green[400]!),
                    //     // padding: const EdgeInsets.all(20.0),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(AppLocalizations.of(context)!.authenticationMail,style: TextStyle(fontSize: 30),overflow: TextOverflow.ellipsis,maxLines: 20,),
                    //     // Text("afeeoafjeoiajfaoiあjふぃえおじゃおいえじおfじゃいえkどあじょふぃえじゃいおふぇじおあじえじゃいおjふぇいおあjふぃおえじゃいfじぇあいふぃあけじゃいおふぇかじおえふぁ",overflow: TextOverflow.clip),
                    //   ],
                    // ),
                    child:RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            // alignment: ui.PlaceholderAlignment.middle, 
                            child: Icon(Icons.check_circle,color: Colors.green[400]!),
                          ),
                          WidgetSpan(
                            // alignment: ui.PlaceholderAlignment.middle, 
                            child: SizedBox(
                              width: 10,
                            ),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          TextSpan(
                            text:AppLocalizations.of(context)!.authenticationMail,
                            style: TextStyle(color: Colors.black,fontSize: 16),
                          ),
                        ],
                      ),
                    )
                    // child:Text(
                    // // AppLocalizations.of(context)!.appName,
                    // AppLocalizations.of(context)!.authenticationMail,
                    // // style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30,fontFamily: "Noto_Sans_JP"),
                    // )
                  ),
                ),
                
              ]
            ),
          ),
        )
        // )
      )
    );
  }
}