import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupShowPage extends HookConsumerWidget {
  final int id;

  const GroupShowPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final group = ref.watch(groupProvider(groupId));

    // if (group == null) {
    //   return Scaffold(
    //     body: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // } else {
      return Scaffold(
        appBar: AppBar(
          // title: Text(group.name),
        ),
        body: ListView.builder(
          // itemCount: group.members.length,
          itemBuilder: (BuildContext context, int index) {
            // final member = group.members[index];
            return ListTile(
              // title: Text(member.name),
            );
          },
        ),
      );
    // }
  }
}
