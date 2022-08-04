import 'package:flutter/material.dart';
import 'package:circle_app/TestPage2.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test1"),
        ),
        body: Center(
            child: Container(
                color: Colors.redAccent,
                child: const Text("Test1", style: TextStyle(fontSize: 50)))));
  }
}