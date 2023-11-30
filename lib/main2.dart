import 'package:circle_app/main.dart';
import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/sign/emailverification.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CircleWidget2 extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => CircleHomeWidget(),
        '/email': (context) => EmailVerificationPage(),
        // '/group/show': (context) => GroupShowPage(),
        '/group/:id': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          final id = args['id'] as int;
          final group = args['group'] as Group;
          return GroupShowPage(id: id,group: group);
        }
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