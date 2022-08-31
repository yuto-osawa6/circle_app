import 'package:circle_app/firebase_options.dart';
import 'package:circle_app/service/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignInPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref){
    // 入力されたメールアドレス
    final newUserEmail = useState("");
    // 入力されたパスワード
    final newUserPassword = useState("");
    // 入力されたメールアドレス（ログイン）
    final loginUserEmail = useState("");
    // 入力されたパスワード（ログイン）
    final loginUserPassword = useState("");
    // 登録・ログインに関する情報を表示
    final infoText = useState("");
    // open password
    final openEye = useState<bool>(false);

    void changeEmailText(String value){
      newUserEmail.value = value;
    }
    void changePasswordText(String value){
      newUserPassword.value = value;
    }
    void clickOpenEye (){
      openEye.value == true?openEye.value = false:openEye.value =true;
      newUserEmail.value = "aaa";
    }
    void handleSignUp ()async {
      print("aaa");
      print(newUserEmail.value);
      print(newUserPassword.value);
      try
        {
          // メール/パスワードでログイン
          final FirebaseAuth auth = FirebaseAuth.instance;
          final UserCredential result =
              // await auth.signInWithEmailAndPassword(
              await auth.createUserWithEmailAndPassword(
            email: newUserEmail.value,
            password: newUserPassword.value,
          );
          // print(result.user!.getIdToken());
          // auth.signOut();
          String idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
          print(idToken);
          // final result = await ApiClientCreateUser.fetchApiCreateUser();

          // final apiClient = ApiClientCreateUser();
          // print(await apiClient.fetchApiCreateUser(idToken));

          // dynamic fetchUsers() async {
          //   return await apiClient.fetchApiCreateUser();
          // }
          // ログインに成功した場合
          // final User user = result.user!;
          // setState(() {
          //   infoText = "ログインOK：${user.email}";
          // });
          print("aaa3");
        } catch (e) {
          print(e);
          print("aaa2");
          // ログインに失敗した場合
          // setState(() {
          //   infoText = "ログインNG：${e.toString()}";
          // });
        }
    };
    // print(openEye);
    // print(newUserEmail);
    // print(newUserPassword);
    // print(newUserPassword.value);
    // print(AppLocalizations.of(context));
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
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
                        changeEmailText(value);
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
                      obscureText: openEye.value?false:true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:  AppLocalizations.of(context)!.password,
                        prefixIcon: Icon(Icons.key, color: Colors.amber,),
                        suffixIcon: IconButton(
                          icon: Icon(
                            openEye.value==true?Icons.visibility:Icons.visibility_off,
                            color: Colors.grey
                          ),
                          onPressed:(){
                            clickOpenEye();
                          }
                        ),
                      ),
                      onChanged: (String value) {
                        changePasswordText(value);
                      },
                    ),
                  )
                ),
              ),
              SizedBox(height:25),
              GestureDetector(
                onTap: (){
                    handleSignUp();
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
                      child: Icon(FontAwesomeIcons.google),
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
                      child: Icon(FontAwesomeIcons.apple),
                    ),
                  ],
                ),
              ),
            ]
          )

        ),
      ),
    );
  }
}