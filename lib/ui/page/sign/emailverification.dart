
import 'package:circle_app/utils/style/fontstyle.dart';
import 'package:circle_app/view_model/signup/signup_view_model.dart';
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
    final _SignUpState = ref.watch(SignProvider);
    // provider（状態の操作）
    final _SignUpNotifier = ref.watch(SignProvider.notifier);
    print(_SignUpState);
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
                  alignment: Alignment.center,
                    child:RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.done,color: Colors.green[400]!,size:18),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              width: 5,
                            ),
                          ),
                          TextSpan(
                            text:AppLocalizations.of(context)!.authenticationMail,
                            style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                Expanded(
                  child:Container(
                    
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(12),
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
                    // height: ,
                    // margin: const EdgeInsets.all(10.0),
                    child:Align(
                    alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.authenticationMailMessage,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            child: Column(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.authenticationMailAdress,
                                style: TextStyle(fontSize: 16,color: Colors.grey[700]),
                              ),
                              Text(
                                _SignUpState.newUserEmail,
                                style: TextStyle(fontSize: 16),
                              ),
                            ]
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]
            ),
          ),
        )
        // )
      )
    );
  }
}