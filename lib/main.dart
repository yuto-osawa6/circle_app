import 'package:circle_app/controller/lang_controller.dart';
import 'package:circle_app/controller/loading_controller.dart';
import 'package:circle_app/controller/users_controller.dart';
import 'package:circle_app/controller/websoket_controller.dart';
import 'package:circle_app/firebase_options.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/repository/user_create.dart';
import 'package:circle_app/sub.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/main.dart';
import 'package:circle_app/ui/page/sign/emailverification.dart';
import 'package:circle_app/ui/page/sign/signHomePage.dart';
import 'package:circle_app/ui/page/sign/signup.dart';
import 'package:circle_app/utils/method/apierror.dart';
import 'package:circle_app/utils/method/connectivity.dart';
import 'package:circle_app/utils/method/errorHandleSnack.dart';
import 'package:circle_app/utils/method/firebaseAuthError/firebaseAuthError.dart';
import 'package:circle_app/utils/method/firebaseFcm_controller.dart';
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
import 'package:firebase_messaging/firebase_messaging.dart';
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
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // // If you're going to use other Firebase services in the background, such as Firestore,
  // // make sure you call `initializeApp` before using other Firebase services.
  // // await Firebase.initializeApp();
  print("バックグランド状態で発火するハンドラーです。");

  print(message);
  print("Handling a background message: ${message.messageId}");
  // try {
  //   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //   // If you're going to use other Firebase services in the background, such as Firestore,
  //   // make sure you call `initializeApp` before using other Firebase services.
  //   // await Firebase.initializeApp();
  //   print("バックグランド状態で発火するハンドラーです。");

  //   print("Handling a background message: ${message.messageId}");
  // } catch (e) {
  //   // エラーが発生した場合の処理
  //   print("エラーが発生しました: $e");
  // }
  // return;
}

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  // Firebase初期化
  // await dotenv.load(fileName: "assets/.env.development");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  print("FirebaseMessaging.onBackgroundMessage");
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  final messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // print(dotenv.env["apiKey"]);
  runApp(ProviderScope(child:CircleWidget()));
  // 
  //  FirebaseMessaging.onBackgroundMessage(NotificationHandlers.backgroundMessageHandler);
  //  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

}

final FirebaseAuth _auth = FirebaseAuth.instance;
class CircleWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => CircleHomeWidget(),
        '/email': (context) => EmailVerificationPage(),
        '/group/:id': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          final id = args['id'] as int;
          final group = args['group'] as Group;
          return GroupShowPage(id: id, group: group);
        }
      },
      onGenerateRoute: (settings) {
          Widget page;
          if (settings.name == '/') {
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
            final group = args is Group ? args : null;
            page = GroupShowPage(id: id, group: group!);
          }
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
      ),
    );
  }
}

// check -1 別クラスを定義したので、locateやcontextが使える可能性あり。
class CircleHomeWidget extends HookConsumerWidget {
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          String? token = await _auth.currentUser!.getIdToken();
          debugPrint(token);
          debugPrint("token-----");
          debugPrint(_auth.currentUser?.uid);
          debugPrint("auth-----");
          // CreateUserRepository repository = CreateUserRepository();
          // repository.fetchUsers(token);
          _UserNotifier.setCurrentUserToken("Bearer ${token}");
          // check したいらない 試しコード
          _UserNotifier.setCurrentUserEmail(email);
          // check-1 した消したので動作しない。
          // final asyncValue = ref.watch(userDataProvider2);
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

  Future<String?> _initMessaging() async {
    final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    // デバイストークンの取得
    String? token = await _firebaseMessaging.getToken();
    print('FCM Token: $token');
    // await _firebaseMessaging.deleteToken();
    // print('FCM Token: $token');
    print('FCM Token:');


    // // デバイストークンの更新をリッスン
    _firebaseMessaging.onTokenRefresh.listen((newToken) {
      print('Updated token: $newToken');
      // 新しいデバイストークンをサーバーサイドに送信して保存する処理を実行する
      // check1 確認してない
      _UserNotifier.update_device_token(ref,newToken);
      // ここで、新しいデバイストークンをサーバーサイドに送信して保存する処理を実装してください
    });
    // await _firebaseMessaging.deleteToken();
    return token;
  }
  Future<void> _initAuth() async {
    // print()
    // final token = await _auth.currentUser?.getIdToken();
    // print(789);
    // print(_auth);
    print(_auth.currentUser);
    // print(token == null);
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) async{
    final token = await _auth.currentUser?.getIdToken();

    final token_details =  await _auth.currentUser?.getIdTokenResult();
    
    // print(_auth.currentUser);
    print("78:${_auth.currentUser == user}");
    print("90:${token_details}");
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
      String? dToken = await _initMessaging();
      print("token2:$dToken");
      if (dToken != null){
        _UserNotifier.setCurrentUser(ref,token,locale.languageCode,dToken);
        NotificationHandlers.initFirebaseMessaging();
        // FirebaseMessaging.onBackgroundMessage(NotificationHandlers.backgroundMessageHandler);
      } else {
        // check-1 tokenがないときにエラー。
      }
      // _UserNotifier.setCurrentUser(ref,token,locale.languageCode);
      print("asyncValue");
      // print(asyncValue.error);
      print("asyncValue");
      // FlutterNativeSplash.remove();
      // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
      // await _firebaseMessaging.deleteToken();
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

    // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    //   await _firebaseMessaging.deleteToken();
    // check -1 メールリンクログインを消しました。
    // await _initDynamicLink(); 
    //  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    // await _firebaseMessaging.deleteToken();
    // String? newToken = await _firebaseMessaging.getToken();
    //  await _firebaseMessaging.deleteToken();
    // String? newToken2 = await _firebaseMessaging.getToken();
    //  print('FCM Token: $newToken');
    //  print('FCM Token: $newToken2');

  }
  useEffect((){
    // check1 あとでなおす
    _initAsync();
    //  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    // await _firebaseMessaging.deleteToken();
    // String? newToken = await _firebaseMessaging.getToken();
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

    // バックグランド
    // final observer = MyWidgetsBindingObserver(context);
    useEffect(() {
      // バックグラウンドからフォアグラウンドに切り替わった際の処理
      final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      // final observer = MyWidgetsBindingObserver();
      final observer = MyWidgetsBindingObserver(ref);
      widgetsBinding.addObserver(observer);

      // ウィジェットのアンマウント（削除）時に実行されるクリーンアップ処理を設定
      return () {
        widgetsBinding.removeObserver(observer);
      };
    }, []);
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


// バックグラウンドからフォアグランドへ
class MyWidgetsBindingObserver extends WidgetsBindingObserver {
  final WidgetRef ref;

  MyWidgetsBindingObserver(this.ref);
  @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      // アプリがフォアグラウンドに戻った際の処理
      // isOnline();
      print("${await isOnline()}");
      print("バックグラウンドからフォアグランドへ");
      final userState = ref.watch(UserProvider); // UserProviderの状態を取得
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final User? user = _auth.currentUser;
      if (user != null) {
        // ログイン済みの処理
        print("ユーザーはログインしています。");
        print(user);
        print(userState);
        if(user.uid == userState.uid){
          // 新規メッセージの取得
        }
      } else {
        // 未ログインの処理
        print("ユーザーは未ログインです。");
      }
    }
  }
}