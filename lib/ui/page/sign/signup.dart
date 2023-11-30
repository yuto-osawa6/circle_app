import 'dart:io';

import 'package:circle_app/controller/lang_controller.dart';
import 'package:circle_app/controller/loading_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/firebase_options.dart';
import 'package:circle_app/service/auth_service.dart';
import 'package:circle_app/service/user_service.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/utils/method/judgeLocate.dart';
import 'package:circle_app/view_model/signup/signup_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignUpPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref){
    // state（状態）
    final _SignState = ref.watch(SignProvider);
    // provider（状態の操作）
    final _SignNotifier = ref.watch(SignProvider.notifier);

    // final _SignUpState = ref.watch(SignProvider);
    // final _SignUpNotifier = ref.watch(SignProvider.notifier);

    final _UserState = ref.watch(UserProvider);
    final _UserNotifier = ref.watch(UserProvider.notifier);

    // final _NavigateActionState = ref.watch(NavigateActionProvider);
    // final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);

    final _LangState = ref.watch(LangProvider);
    final _LangNotifier = ref.watch(LangProvider.notifier);

    final _LoadingCircleState = ref.watch(LoadingCircleProvider);
    final _LoadingCircleNotifier = ref.watch(LoadingCircleProvider.notifier);

    void googleLogin ()async {
      // _LoadingCircleNotifier.setLoaded(false);
      try{
      final token = await AuthService().signInWithGoogle();
      // check1 ロード必要かどうか。
      // _LoadingCircleNotifier.setLoaded(false);
      // print("aa98");
      // if(token == null){
      //   print("aa990");
      //   return;
      // }
      // print(_LoadingCircleState);
      //   print("aa9901");

      // final FirebaseAuth _auth = FirebaseAuth.instance;
      // Locale locale = Localizations.localeOf(context);
      // print(_auth.currentUser);
      // print("aa991");
      // final idtoken = await _auth.currentUser?.getIdToken();
      // print(idtoken);
      // print("idtoken");
      // _UserNotifier.setCurrentUser(ref,idtoken,locale.languageCode);
      }catch (e){
        print(e);
        print("signup error");
      }finally{
        _SignNotifier.setSituation(true);
        // _LoadingCircleNotifier.setLoaded(true);
      }
    }
    print(_UserState);
    print(_LangState);
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child:Text(
                  AppLocalizations.of(context)!.appName,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
                  )
                ),
                SizedBox(height:50),
                // メールアドレス入力
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(50, 0, 0, 0), //色
                          spreadRadius: 1, 
                          blurRadius: 10, 
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child:Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 0.0),
                      child:TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:  AppLocalizations.of(context)!.email,
                          prefixIcon: Icon(Icons.email, color: Colors.amber,),
                        ),
                        onChanged: (String value) {
                          // changeEmailText(value);
                          _SignNotifier.changeEmailText(value);
                        },
                      ),
                    )
                  ),
                ),
                SizedBox(height:25),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(50, 0, 0, 0), //色
                          spreadRadius: 1, 
                          blurRadius: 10, 
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child:Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 0.0),
                      child:TextFormField(
                        obscureText: _SignState.openEye?false:true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:  AppLocalizations.of(context)!.password,
                          prefixIcon: Icon(Icons.key, color: Colors.amber,),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _SignState.openEye==true?Icons.visibility:Icons.visibility_off,
                              color: Colors.grey
                            ),
                            onPressed:(){
                              _SignNotifier.clickOpenEye();
                            }
                          ),
                        ),
                        onChanged: (String value) {
                          _SignNotifier.changePasswordText(value);
                        },
                      ),
                    )
                  ),
                ),
                // SizedBox(height:25),
                // Container(
                //   padding:const EdgeInsets.symmetric(horizontal: 25.0),
                //   child:Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(12),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color.fromARGB(50, 0, 0, 0), //色
                //           spreadRadius: 1, 
                //           blurRadius: 10, 
                //           offset: Offset(5, 10),
                //         ),
                //       ],
                //     ),
                //     child:Padding(
                //       padding:const EdgeInsets.symmetric(horizontal: 0.0),
                //       child:TextFormField(
                //         obscureText: _SignState.openEye2?false:true,
                //         decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText:  AppLocalizations.of(context)!.password,
                //           prefixIcon: Icon(Icons.key, color: Colors.amber,),
                //           suffixIcon: IconButton(
                //             icon: Icon(
                //               _SignState.openEye2==true?Icons.visibility:Icons.visibility_off,
                //               color: Colors.grey
                //             ),
                //             onPressed:(){
                //               _SignNotifier.clickOpenEye();
                //             }
                //           ),
                //         ),
                //         onChanged: (String value) {
                //           _SignNotifier.changePasswordText2(value);
                //         },
                //       ),
                //     )
                //   ),
                // ),
                // SingleChildScrollView(),
                SizedBox(height:25),
                GestureDetector(
                  onTap: (){
                      _SignNotifier.handleSignUp(context);
                    },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child:Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(50, 0, 0, 0), //色
                            spreadRadius: 1, 
                            blurRadius: 10, 
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                      child: Center(
                        child:Text(
                          AppLocalizations.of(context)!.signUp,
                          style: TextStyle(color: Colors.amber),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height:50),
                Container(
                  child:Text(
                    textAlign:TextAlign.center,
                    style:TextStyle(fontSize: 20),
                    AppLocalizations.of(context)!.or,
                  )
                ),
                SizedBox(height:50),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Container(
                        padding:const EdgeInsets.all(10.10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child: 
                        IconButton(
                          icon: Icon(FontAwesomeIcons.google),
                          // onPressed: () => googleLogin(context, ref),
                          onPressed: () => googleLogin(),
                          // onPressed: () =>_UserNotifier.setCurrentUserEmail("bb"),

                          // onPressed: ()async => await AuthService().signInWithGoogle(),
                          // onPressed: () {
                          //   try {
                          //     // final userCredential = await signInWithGoogle();
                          //     final UserCredential = AuthService().signInWithGoogle();
                          //     // print(userCredential);
                          //     print("↑userCredential");
                          //   } on FirebaseAuthException catch (e) {
                          //     print('FirebaseAuthException');
                          //     print('${e}');
                          //   } on Exception catch (e) {
                          //     print('Other Exception');
                          //     print('${e.toString()}');
                          //   }
                          // },
                        ),
                      //  Icon(FontAwesomeIcons.google),
                      ),
                      Container(
                        padding:const EdgeInsets.all(10.10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child: Icon(FontAwesomeIcons.twitter),
                      ),
                      Container(
                        padding:const EdgeInsets.all(10.10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child: Icon(FontAwesomeIcons.facebook),
                      ),
                      Container(
                        padding:const EdgeInsets.all(10.10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child:
                          IconButton(
                            icon: Icon(FontAwesomeIcons.apple),
                            onPressed: () {
                              Locale locale = Localizations.localeOf(context);
                              _LangNotifier.setCurrentLang("jp");
                              print("changeApple");

                            },
                            )
                      ),
                    ],
                  ),
                ),
              ]
            )
          ),
        ),
      ),
    );
  }
}