import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/firebase_options.dart';
import 'package:circle_app/ui/page/main.dart';
import 'package:circle_app/ui/page/sign/emailverification.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/view_model/signup/signup_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/common/header/header.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/search/search.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:circle_app/firebase_options.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:google_fonts/google_fonts.dart';
// void main() async {
//   await dotenv.load(fileName: "assets/.env.development");
//   // await dotenv.load(fileName: ".env.development");
//   // assets/.env.development
//   print(dotenv.env["apiKey"]);
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//    options: DefaultFirebaseOptions().currentPlatform,
//   );
//   runApp(ProviderScope(child:CircleWidget()));
// }

Future<void> main() async {
  // Firebase初期化
  // await Firebase.initializeApp();
  await dotenv.load(fileName: "assets/.env.development");
  // await dotenv.load(fileName: ".env.development");
  // assets/.env.development
  print(dotenv.env["apiKey"]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
  // print("afeafjie");
  // print(initialLink);
  // print("afeafjie2");
  runApp(ProviderScope(child:CircleWidget()));
}

final FirebaseAuth _auth = FirebaseAuth.instance;
// class CircleWidget extends StatelessWidget {
class CircleWidget extends HookConsumerWidget {
  
  @override
  // void initState() {
  //   _initAsync();
  //   super.initState();
  // }

  // Future<void> _initAsync() async {
  //   // await _initAuth();
  //   // await _initEmail();
  //   await _initDynamicLink();
  // }
  // Future<void> _initAsync() async {
  //   // await _initAuth();
  //   // await _initEmail();
  //   print("abcd00");
  //   await _initDynamicLink();
  // }
  // Future<void> _initDynamicLink() async {
  //   print("abcd");
  //   // リンクからアプリへ遷移するとき、アプリが開いていると発動
  //   FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
  //     // Navigator.pushNamed(context, dynamicLinkData.link.path);
  //     print("abcd2");
  //     print(dynamicLinkData);
  //     print("abcd23");
  //     _verifyDynamicLink(dynamicLinkData);
  //   }).onError((error) {
  // // Handle errors
  //   print("abcd3");
  //   });
  //   // FirebaseDynamicLinks.instance.onLink(
  //   //     onSuccess: _verifyDynamicLink,
  //   //     onError: (OnLinkErrorException e) async {
  //   //       // ScaffoldSnackBar.of(context)
  //   //       //     .show('Error signing in with email link $e');
  //   //     });

  //   // リンクからアプリへ遷移するとき、アプリが開いていないと発動
  //   FirebaseDynamicLinks.instance.getInitialLink().then(
  //         _verifyDynamicLink,
  //       );
  // }
  /// メールリンクの検証にのみ利用
  // Future<dynamic> _verifyDynamicLink(PendingDynamicLinkData? _data) async {
  //   print("abcd5");
  //   print(_data); 
  //   print("abcd56");
  //      // // すでにSigninしている場合はスキップ
  //   // if (user != null) return;
  //   // // メールアドレスの入力がない場合はスキップ
  //   // if (email == null) return;

  //   final String? _deepLink = _data?.link.toString();
  //   if (_deepLink == null) return;

  //   // // リンク（＝URL）が、メールリンクかどうか検証
  //   if (_auth.isSignInWithEmailLink(_deepLink)) {
  //     // メールリンクに含まれる認証情報でサインイン
  //     // 成功したらFirebase Authenticationにユーザーを作成（すでに存在する場合はログインのみ）
  //     _auth.signInWithEmailLink(email: email!, emailLink: _deepLink).then(
  //       (value) {
  //         ScaffoldSnackBar.of(context)
  //             .show('Successfully signed in! by: ${value.user!.email!}');
  //       },
  //     ).catchError(
  //       (onError) {
  //         ScaffoldSnackBar.of(context)
  //             .show('Error signing in with email link $onError');
  //       },
  //     );
  //   }
  // }
  Widget build(BuildContext context, WidgetRef ref) {
    //  Locale locale = Localizations.localeOf(context);

  // print(locale); 
    // state（状態）
    final _SignUpState = ref.watch(SignProvider);
    final _SignUpNotifier = ref.watch(SignProvider.notifier);

    final _UserState = ref.watch(UserProvider);
    final _UserNotifier = ref.watch(UserProvider.notifier);


    Future<dynamic> _verifyDynamicLink(PendingDynamicLinkData? _data) async {
      try{
    print("abcd5");
    print(_data?.link.queryParameters["continueUrl"].toString()); 
    print("abcd568");
    print(_data?.link.queryParametersAll.values); 
    print("abcd568");
    print(_data?.link); 

    final url = _data?.link.queryParameters["continueUrl"].toString();
    // check-1 (あとでerrorをthrowさせるかどうか) 
    if(url == null) return;
    final uri = Uri.parse(url);
    String? email = uri.queryParameters['email'];
    print(url);
    print(uri);
    print(email);
    print("abcd56");
       // // すでにSigninしている場合はスキップ
    // if (user != null) return;
    // // メールアドレスの入力がない場合はスキップ
    // check-1 (あとでerrorをthrowさせるかどうか) 
    if (email == null) return;
    

    final String? _deepLink = _data?.link.toString();
    print(_deepLink);
    if (_deepLink == null) return;

    // // リンク（＝URL）が、メールリンクかどうか検証
    if (_auth.isSignInWithEmailLink(_deepLink)) {
      var emailAuth = _SignUpState.newUserEmail;
      print("ajgiefjaioefj");
      print(emailAuth);
      print(_SignUpState);
      print("ajgiefjaioefj33");
      // メールリンクに含まれる認証情報でサインイン
      // 成功したらFirebase Authenticationにユーザーを作成（すでに存在する場合はログインのみ）
      _auth.signInWithEmailLink(email: email, emailLink: _deepLink).then(
        (value) {
          // ScaffoldSnackBar.of(context)
          //     .show('Successfully signed in! by: ${value.user!.email!}');
          messageHandleSnack(context,AppLocalizations.of(context)!.successloggedIn);
        },
      ).catchError(
        (onError) {
           print("ajgiefjaioefj3");
          print(onError);
           print("ajgiefjaioefj3");
          // ScaffoldSnackBar.of(context)
          //     .show('Error signing in with email link $onError');
        },
      );
    }
    }catch(e){

    }
  }
     Future<void> _initDynamicLink() async {
    print("abcd");
    // リンクからアプリへ遷移するとき、アプリが開いていると発動
    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      // Navigator.pushNamed(context, dynamicLinkData.link.path);
      print("abcd2");
      print(dynamicLinkData);
      print("abcd23");
      _verifyDynamicLink(dynamicLinkData);
    }).onError((error) {
  // Handle errors
    print("abcd3");
    });
    // FirebaseDynamicLinks.instance.onLink(
    //     onSuccess: _verifyDynamicLink,
    //     onError: (OnLinkErrorException e) async {
    //       // ScaffoldSnackBar.of(context)
    //       //     .show('Error signing in with email link $e');
    //     });

    // リンクからアプリへ遷移するとき、アプリが開いていないと発動
    FirebaseDynamicLinks.instance.getInitialLink().then(
          _verifyDynamicLink,
        );
  }
   Future<void> _initAuth() async {
    // _auth.userChanges().listen(
    //       (event) => setState(() => user = event),
    //     );
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user != null) {
      print("eiajfeioajioejfaoiejfakldjfiea");
      print(user.uid);
      print("eiajfeioajioejfaoiejfakldjfiea");
      print(user);
      print("eiajfeioajioejfaoiejfakldjfiea");
      // check -1 user email!のところ、エラー回避するかどうか
      _UserNotifier.setCurrentUserEmail(user.email!); 

    }
  });
  }
  
  Future<void> _initAsync() async {
    // await _initAuth();
    // await _initEmail();
    print("abcd00");
    await _initAuth();
    await _initDynamicLink();
  }
  useEffect((){
    _initAsync();
  },[]);
  print("abcd001");
  // Locale locale = Localizations.localeOf(context);

  // print(locale); 
  // print(getLanguage(context));
  print(_SignUpState);
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MainPage(),
        '/email': (context) => EmailVerificationPage(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates, // 追加
      supportedLocales: AppLocalizations.supportedLocales,   
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('ja', ''), //日本語
      //   const Locale('en', ''), //英語
      // ],
      title: "",
      theme: ThemeData(
        primaryColor:Colors.blue,
        // fontFamily:getLanguage(context)=="en"?"NotoSansJP":"NotoSansJP",
        // textTheme: const TextTheme(
        //   bodyText2: TextStyle(fontSize: 16)
        // ),
        // textTheme: GoogleFonts.sawarabiMinchoTextTheme(
        //   Theme.of(context).textTheme,
        // ),
      ),
      // home:  HomePage(title:"FlutterApp2"),
      
      // home:  MainPage(),
      // locale: Locale('en')
    );
  }
}

// import 'package:circle_app/firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

// Future<void> main() async {
//   // Firebase初期化
//   // await Firebase.initializeApp();
//   await dotenv.load(fileName: "assets/.env.development");
//   // await dotenv.load(fileName: ".env.development");
//   // assets/.env.development
//   print(dotenv.env["apiKey"]);
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyAuthPage(),
//     );
//   }
// }

// class MyAuthPage extends StatefulWidget {
//   @override
//   _MyAuthPageState createState() => _MyAuthPageState();
// }

// class _MyAuthPageState extends State<MyAuthPage> {
//   // 入力されたメールアドレス
//   String newUserEmail = "";
//   // 入力されたパスワード
//   String newUserPassword = "";
//   // 登録・ログインに関する情報を表示
//   String infoText = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(32),
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 // テキスト入力のラベルを設定
//                 decoration: InputDecoration(labelText: "メールアドレス"),
//                 onChanged: (String value) {
//                   setState(() {
//                     newUserEmail = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "パスワード（６文字以上）"),
//                 // パスワードが見えないようにする
//                 obscureText: true,
//                 onChanged: (String value) {
//                   setState(() {
//                     newUserPassword = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 8),
//               ElevatedButton(
//                 onPressed: () async {
//                   try {
//                     // メール/パスワードでユーザー登録
//                     final FirebaseAuth auth = FirebaseAuth.instance;
//                     final UserCredential result =
//                         await auth.createUserWithEmailAndPassword(
//                       email: newUserEmail,
//                       password: newUserPassword,
//                     );

//                     // 登録したユーザー情報
//                     final User user = result.user!;
//                     print(result);
//                     setState(() {
//                       infoText = "登録OK：${user.email}";
//                     });
//                   } catch (e) {
//                     // 登録に失敗した場合
//                     setState(() {
//                       infoText = "登録NG：${e.toString()}";
//                     });
//                   }
//                 },
//                 child: Text("ユーザー登録"),
//               ),
//               const SizedBox(height: 8),
//               Text(infoText)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }