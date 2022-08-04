
import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:flutter/material.dart';
// import 'package:yochan/TestPage1.dart';
// import 'package:yochan/TestPage2.dart';
// import 'package:yochan/TestPage3.dart';

void main(){
  runApp(MyWidget());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext){
//     return MaterialApp(
//       title: "",
//       theme: ThemeData(
//         primaryColor:Colors.blue
//       ),
//       home:  MyHomePage(title:"Flutter"),
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      title: "",
      theme: ThemeData(
        primaryColor:Colors.blue
      ),
      home:  MyHomePage(title:"FlutterApp"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}