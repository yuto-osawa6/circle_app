import 'package:circle_app/controller/lang_controller.dart';
import 'package:circle_app/controller/loading_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/firebase_options.dart';
import 'package:circle_app/repository/user_create.dart';
import 'package:circle_app/sub.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/main.dart';
import 'package:circle_app/ui/page/sign/emailverification.dart';
import 'package:circle_app/ui/page/sign/signHomePage.dart';
import 'package:circle_app/ui/page/sign/signup.dart';
import 'package:circle_app/utils/method/apierror.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/firebaseAuthError/firebaseAuthError.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/view_model/navigate_view_model.dart';
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
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  // Firebase初期化
  // await Firebase.initializeApp();
  await dotenv.load(fileName: "assets/.env.development");

  // flutter_native_splash
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
  //   final _SignUpState = ref.watch(SignProvider);
  //   final _SignUpNotifier = ref.watch(SignProvider.notifier);

  //   final _UserState = ref.watch(UserProvider);
  //   final _UserNotifier = ref.watch(UserProvider.notifier);

  //   final _NavigateActionState = ref.watch(NavigateActionProvider);
  //   final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);


  //   Future<dynamic> _verifyDynamicLink(PendingDynamicLinkData? _data) async {
  //     // ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  //     try{
  //   print("abcd5");
  //   print(_data?.link.queryParameters["continueUrl"].toString()); 
  //   print("abcd568");
  //   print(_data?.link.queryParametersAll.values); 
  //   print("abcd568");
  //   print(_data?.link); 

  //   final url = _data?.link.queryParameters["continueUrl"].toString();
  //   // check-1 (あとでerrorをthrowさせるかどうか) 
  //   if(url == null) return;
  //   final uri = Uri.parse(url);
  //   String? email = uri.queryParameters['email'];
  //   String? lang = uri.queryParameters['lang'];
  //   print(url);
  //   print(uri);
  //   print(email);
  //   print("abcd56");
  //      // // すでにSigninしている場合はスキップ
  //   // if (user != null) return;
  //   // // メールアドレスの入力がない場合はスキップ
  //   // check-1 (あとでerrorをthrowさせるかどうか) 
  //   if (email == null) return;
    

  //   final String? _deepLink = _data?.link.toString();
  //   print(_deepLink);
  //   if (_deepLink == null) return;

  //   // // リンク（＝URL）が、メールリンクかどうか検証
  //   if (_auth.isSignInWithEmailLink(_deepLink)) {
  //     var emailAuth = _SignUpState.newUserEmail;
  //     print("ajgiefjaioefj");
  //     print(emailAuth);
  //     print(_SignUpState);
  //     print("ajgiefjaioefj33");
  //     // メールリンクに含まれる認証情報でサインイン
  //     // 成功したらFirebase Authenticationにユーザーを作成（すでに存在する場合はログインのみ）yy
  //     try{
  //         print("ajgiefjaioefj33go1");
  //         await _auth.signInWithEmailLink(email: email, emailLink: _deepLink);
  //       // .then(
  //       // // print("");
  //       // (value) {
  //         // ScaffoldSnackBar.of(context)
  //         //     .show('Successfully signed in! by: ${value.user!.email!}');
  //         print("ajgiefjaioefj33go");
  //         messageHandleSnack2(lang);
  //         print("aaaa");
  //         // print("koko:${value}");
  //       // },
  //       // );
  //     }on FirebaseAuthException catch (e){
  //         // Locale locale = Localizations.localeOf(context);
  //         // // 言語コード取得
  //         // String languageCode = locale.languageCode;
  //         // print(locale.languageCode);
  //         print("ajgiefjaioefj3");
  //         print(e);
  //         // print(onError.hashCode);
  //         FirebaseAuthError2(e.code,context,lang);
  //         // ScaffoldMessenger.of(context).show(SnackBar(content: Text("afefefefefe")));
  //         // try{
  //         // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("afefefefefe")));
  //         // _scaffoldMessangerState.showSnackBar(const SnackBar(content: Text("afefefefefe")));
  //         // }catch (e){
  //         //   print("ajgiefjaioefj357");
  //         //   print(e);
  //         //   print("ajgiefjaioefj357");
  //         // }

  //         print("ajgiefjaioefj3");
  //     }
  //     // _auth.signInWithEmailLink(email: email, emailLink: _deepLink).then(
  //     //   // print("");
  //     //   (value) {
  //     //     // ScaffoldSnackBar.of(context)
  //     //     //     .show('Successfully signed in! by: ${value.user!.email!}');
  //     //     messageHandleSnack(context,AppLocalizations.of(context)!.successloggedIn);
  //     //     print("aaaa");
  //     //     print("koko:${value}");
  //     //   },
  //     // ).catchError(
  //       // (onError) {
  //         //  print("ajgiefjaioefj3");
  //         // print(onError);
  //         // print(onError.hashCode);
  //         // // FirebaseAuthError(onError,context);
  //         //  print("ajgiefjaioefj3");
  //         // ScaffoldSnackBar.of(context)
  //         //     .show('Error signing in with email link $onError');
  //       // },
  //     // );
  //   }
  //   }catch(e){

  //   }
  // }
  //    Future<void> _initDynamicLink() async {
  //     // ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
  //   print("abcd");
  //   // リンクからアプリへ遷移するとき、アプリが開いていると発動
  //   FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
  //     // Navigator.pushNamed(context, dynamicLinkData.link.path);
  //     print("abcd2");
  //     print(dynamicLinkData);
  //     print("abcd23");
  //     _NavigateActionNotifier.onTapItem(0);
  //     // Navigator.popUntil(context, (route) => route.isFirst);
  //     Navigator.popUntil(context, ModalRoute.withName('/'));
  //     _verifyDynamicLink(dynamicLinkData);
  //   }).onError((error) {
  // // Handle errors
  //   print("abcd3");
  //   print(error);
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
  //  Future<void> _initAuth() async {
  //   // _auth.userChanges().listen(
  //   //       (event) => setState(() => user = event),
  //   //     );
  //   FirebaseAuth.instance
  // .authStateChanges()
  // .listen((User? user) {
  //   if (user != null) {
  //     print("eiajfeioajioejfaoiejfakldjfiea");
  //     print(user.uid);
  //     print("eiajfeioajioejfaoiejfakldjfiea");
  //     print(user);
  //     print("eiajfeioajioejfaoiejfakldjfiea");
  //     // check -1 user email!のところ、エラー回避するかどうか
  //     _UserNotifier.setCurrentUserEmail(user.email!); 

  //   }
  // });
  // }
  
  // Future<void> _initAsync() async {
  //   // await _initAuth();
  //   // await _initEmail();
  //   print("abcd00");
  //   await _initAuth();
  //   await _initDynamicLink();
  // }
  // useEffect((){
  //   _initAsync();
  // },[]);
  // print("abcd001");
  // // Locale locale = Localizations.localeOf(context);

  // // print(locale); 
  // // print(getLanguage(context));
  // print(_SignUpState);
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => MainPage(),
      //   '/email': (context) => EmailVerificationPage(),
      // },
      routes: <String, WidgetBuilder>{
        '/': (context) => CircleHomeWidget(),
        '/email': (context) => EmailVerificationPage(),
        // '/group/show': (context) => GroupShowPage(),
        '/group/:id': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          final id = args['id'] as int;
          return GroupShowPage(id: id);
        }
      },
      // onGenerateRoute: (settings) {
        // switch (settings.name) {
        //   case '/':
        //     return MaterialPageRoute(builder: (context) => CircleHomeWidget());
        //   case '/email':
        //     return MaterialPageRoute(builder: (_) => EmailVerificationPage());
        //   default:
        //     return MaterialPageRoute(builder: (_) => MainPage());
        // }
        
      // },
       onGenerateRoute: (settings) {
          // Widget page = CircleWidget2();
          Widget page;
          print(settings.name);
          if (settings.name == '/') {
            // return MaterialPageRoute(builder: (_) => EmailVerificationPage());
            // page = SubPage(EmailVerificationPage());
            page = Scaffold(
              appBar: AppBar(),
              body: SubPage(),
              bottomNavigationBar: Footer(),
            );
          }
          if (settings.name == '/user_group_show') {
            print("aaass");

            final args = settings.arguments;
            final id = args is int ? args : 0;
            page = GroupShowPage(id: id);
          }
          // if (settings.name == '/email') {
          //   // return MaterialPageRoute(builder: (_) => EmailVerificationPage());
          //   page = Scaffold(
          //     // appBar: AppBar(),
          //     body: EmailVerificationPage(),
          //     // bottomNavigationBar: Footer(),
          //   );
          // }
          else {
            page = MainPage();
          }
          return MaterialPageRoute(builder: (_) => page);
        },
      
      localizationsDelegates: AppLocalizations.localizationsDelegates, // 追加
      supportedLocales: AppLocalizations.supportedLocales,   
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



// check -1 別クラスを定義したので、locateやcontextが使える可能性あり。
class CircleHomeWidget extends HookConsumerWidget {
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  Locale locale = Localizations.localeOf(context);

  // print(locale); 
    // state（状態）
    final _SignUpState = ref.watch(SignProvider);
    final _SignUpNotifier = ref.watch(SignProvider.notifier);

    final _UserState = ref.watch(UserProvider);
    final _UserNotifier = ref.watch(UserProvider.notifier);

    final _NavigateActionState = ref.watch(NavigateActionProvider);
    final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);

    final _LangState = ref.watch(LangProvider);
    final _LangNotifier = ref.watch(LangProvider.notifier);

    final _LoadingState = ref.watch(LoadingCircleProvider);
    final _LoadingNotifier = ref.watch(LoadingCircleProvider.notifier);

    // String token = await _auth.currentUser!.getIdToken();
    //       // CreateUserRepository repository = CreateUserRepository();
    //       // repository.fetchUsers(token);
    //       _UserNotifier.setCurrentUserToken(token);
    //       final asyncValue = ref.watch(userDataProvider);
    //       print(asyncValue);

    // final asyncValue = ref.watch(userDataProvider);
    // print("asyncValue----");
    // // print(asyncValue);
    // print("----");

    // final client = RestClient(dio);

    // client.getTasks().then((it) => logger.i(it));

    print(_LoadingState);
    print("_LoadingState");

    Future<dynamic> _verifyDynamicLink(PendingDynamicLinkData? _data) async {
      // ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
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
    String? lang = uri.queryParameters['lang'];
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
      // 成功したらFirebase Authenticationにユーザーを作成（すでに存在する場合はログインのみ）yy
      try{
          print("ajgiefjaioefj33go1");
          await _auth.signInWithEmailLink(email: email, emailLink: _deepLink);
          String token = await _auth.currentUser!.getIdToken();
          debugPrint(token);
          debugPrint("token-----");
          debugPrint(_auth.currentUser?.uid);
          debugPrint("auth-----");
          // CreateUserRepository repository = CreateUserRepository();
          // repository.fetchUsers(token);
          _UserNotifier.setCurrentUserToken("Bearer ${token}");
          // check したいらない 試しコード
          _UserNotifier.setCurrentUserEmail(email);
          final asyncValue = ref.watch(userDataProvider2);
          _LangNotifier.setCurrentLang(lang);
          // print(asyncValue);
          // print(asyncValue.error);
          print("ajgiefjaioefj33go");
          // messageHandleSnack2(lang);
          print("aaaa");
      }on FirebaseAuthException catch (e){
          print("ajgiefjaioefj3");
          // String token = await _auth.currentUser!.getIdToken();
          // CreateUserRepository repository = CreateUserRepository();
          // repository.fetchUsers(token);
          // final asyncValue = ref.watch(userDataProvider);
          print(e);
          FirebaseAuthError2(e.code,context,lang);
          print("ajgiefjaioefj3");
      }
    }
    }catch(e){

    }
  }
    Future<void> _initDynamicLink() async {
      // ScaffoldMessengerState _scaffoldMessangerState = scaffoldKey.currentState!;
      print("abcd");
      // リンクからアプリへ遷移するとき、アプリが開いていると発動
      FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      // Navigator.pushNamed(context, dynamicLinkData.link.path);
      print("abcd2");
      print(dynamicLinkData);
      print("abcd23");
      _NavigateActionNotifier.onTapItem(0);
      // Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.popUntil(context, ModalRoute.withName('/'));
      _verifyDynamicLink(dynamicLinkData);
    }).onError((error) {
    // Handle errors
    print("abcd3");
    print(error);
    print("abcd3");
    });
    // リンクからアプリへ遷移するとき、アプリが開いていないと発動
    // check 確認してない。dynamiclinkDataを引数に必要。
    FirebaseDynamicLinks.instance.getInitialLink().then(
          _verifyDynamicLink,
        );
  }
  Locale locale = Localizations.localeOf(context);
  Future<void> _initAuth() async {
    // print()
    // final token = await _auth.currentUser?.getIdToken();
    print(789);
    // print(token == null);
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) async{
    final token = await _auth.currentUser?.getIdToken();
    print("78:${_auth.currentUser == user}");
    print("user78");
    print("782:${token == null}");
    print("7892:${_UserState}");
    // print("7892:${_UserState.email != _auth.currentUser!.email}");
    print("7893:${_auth.currentUser}");
    print("783:${user}");
    // if (user != null && token !=null && _auth.currentUser != null&&_auth.currentUser!.email == _UserState.email) {
    if (user != null && _auth.currentUser != null) {
      print("eiajfeioajioejfaoiejfakldjfiea");
      print(user.uid);
      print("eiajfeioajioejfaoiejfakldjfiea");
      print(user);
      print("eiajfeioajioejfaoiejfakldjfiea");
      // check -1 user email!のところ、エラー回避するかどうか
      // _UserNotifier.setCurrentUserEmail(user.email!);

      // _UserNotifier.setCurrentUserToken("Bearer ${token}");
      print(_UserState);
      // final asyncValue = ref.watch(userDataProvider);
      _UserNotifier.setCurrentUser(ref,token,locale.languageCode);
      print("asyncValue");
      // print(asyncValue.error);
      print("asyncValue");
      // FlutterNativeSplash.remove();

    }else{
      FlutterNativeSplash.remove();
    }
  });
  print("aafjeioa99990");
  // String token = await _auth.currentUser!.getIdToken();
  // print(token);
          // CreateUserRepository repository = CreateUserRepository();
          // repository.fetchUsers(token);
          
  
  }
  
  Future<void> _initAsync() async {
    print("abcd00");
    await _initAuth();
    await _initDynamicLink();
  }
  useEffect((){
    // check1 あとでなおす
    _initAsync();
  },[]);
  print("abcd001");
  print(_SignUpState);
    // return MaterialApp(
    //   scaffoldMessengerKey: scaffoldKey,
    //   initialRoute: '/',
    //   routes: <String, WidgetBuilder>{
    //     '/': (context) => MainPage(),
    //     '/email': (context) => EmailVerificationPage(),
    //   },
    //   localizationsDelegates: AppLocalizations.localizationsDelegates, // 追加
    //   supportedLocales: AppLocalizations.supportedLocales,   
    //   title: "",
    //   theme: ThemeData(
    //     primaryColor:Colors.blue,
    //   ),
    // );
    // final asyncValue = ref.watch(userDataProvider);

    // check1 errorMessageの内容が更新されるたびに呼ばれるのかどうかわからないため保留。
    // ref.listen<String?>(
    //   errorMessageProvider,
    //   ((previous, next) {
    //     print("next");
    //     print(next);
    //     apiError(next, context);
    //   }),
    // );
    print("7800${_UserState.email}");
    return Stack(
      children: [
        Scaffold(
          bottomNavigationBar: Footer(),
          body: _UserNotifier.judgeSigned() == true ? 
          // MainPage() 
          SubPage()
          : 
          SignUpPage(),
        ),
        if (_LoadingState.loaded == false)
          Opacity(
            opacity: 0.7,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
        if (_LoadingState.loaded == false) Center(
          child: CircularProgressIndicator(
            // color:Colors.
        ))
        // if (1==1) 
          // Center(child:  Image.asset('assets/images/circle-load1.gif'))


      ]
    );
    
  }
}