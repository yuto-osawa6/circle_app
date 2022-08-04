

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroupFrends extends StatefulWidget {
  const GroupFrends({Key? key}) : super(key: key);

  @override
  State<GroupFrends> createState() => _GroupFrendsState();
}

class _GroupFrendsState extends State<GroupFrends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("GroupFrends"),
      ),
    );
  }
}