

import 'dart:convert';

import 'package:circle_app/model/task.dart';
import 'package:circle_app/service/task_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    super.initState();
    // final a = fetchUsers()
    // print(fetchUsers());
    print("aaa");
    // print("aa");
  }
  // print()
  Widget build(BuildContext context) {
    // print(fetchSentence);
    // print("aaaaa");
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   // AppLocalizations.of(context)!.auth.hashCode
            // ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
            Text(
              AppLocalizations.of(context)!.deny,
            ),
          ],
        ),
      ),
    );
  }
}