
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class SignInPage extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text("Search"),
//       ),
//     );
//   }
// }
import 'package:circle_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MyAuthPage extends StatefulWidget {
  @override
  _MyAuthPageState createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<MyAuthPage> {
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
  // 入力されたメールアドレス（ログイン）
  String loginUserEmail = "";
  // 入力されたパスワード（ログイン）
  String loginUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextFormField(
                // テキスト入力のラベルを設定
                decoration: InputDecoration(labelText: "メールアドレス"),
                onChanged: (String value) {
                  setState(() {
                    newUserEmail = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "パスワード（６文字以上）"),
                // パスワードが見えないようにする
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    newUserPassword = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // メール/パスワードでユーザー登録
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final UserCredential result =
                        await auth.createUserWithEmailAndPassword(
                      email: newUserEmail,
                      password: newUserPassword,
                    );

                    // 登録したユーザー情報
                    final User user = result.user!;
                    print(result);
                    setState(() {
                      infoText = "登録OK：${user.email}";
                    });
                  } catch (e) {
                    // 登録に失敗した場合
                    setState(() {
                      infoText = "登録NG：${e.toString()}";
                    });
                  }
                },
                child: Text("ユーザー登録"),
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: InputDecoration(labelText: "メールアドレス"),
                onChanged: (String value) {
                  setState(() {
                    loginUserEmail = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "パスワード"),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    loginUserPassword = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final UserCredential result =
                        await auth.signInWithEmailAndPassword(
                      email: loginUserEmail,
                      password: loginUserPassword,
                    );
                    // ログインに成功した場合
                    final User user = result.user!;
                    setState(() {
                      infoText = "ログインOK：${user.email}";
                    });
                  } catch (e) {
                    // ログインに失敗した場合
                    setState(() {
                      infoText = "ログインNG：${e.toString()}";
                    });
                  }
                },
                child: Text("ログイン"),
              ),
              const SizedBox(height: 8),
              Text(infoText)
            ],
          ),
        ),
      ),
    );
  }
}

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

  void changeEmailText(String value){
    newUserPassword.value = value;
  }
  void changePasswordText(String value){
    newUserEmail.value = value;
  }
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: Center(
        child: SafeArea(
          // color: Colors.blue,
          // padding: const EdgeInsets.all(0.200),
          // backgroundColor:,
          child: Column(
            children: <Widget>[
              SizedBox(height:100),
              Align(
                alignment: Alignment.centerRight,
                child:Text(
                AppLocalizations.of(context)!.appName,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                textAlign: TextAlign.left
                )
              ),
              // メールアドレス入力
              TextFormField(
                // padding: const EdgeInsets.all(50.50),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:  AppLocalizations.of(context)!.email,
                  suffixIcon: Icon(Icons.ac_unit, color: Colors.amber,),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  //   borderSide: BorderSide(
                  //   color: Colors.amber,
                  //   )
                  // ),
                  // labelText: 'メールアドレス',
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  //   borderSide: BorderSide(
                  //   color: Colors.black12,
                  //   )
                  // ),
                ),
                onChanged: (String value) {
                  changeEmailText(value);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText:  AppLocalizations.of(context)!.password),
                obscureText: true,
                onChanged: (String value) {
                  changePasswordText(value);
                },
              ),
            ]
          )
          // child: Container(
          //   color: Color.fromARGB(255, 21, 64, 99),
          //   width: 10.0,
          //   height: 10.0,
          // )
        ),
      ),
    );
  }
}