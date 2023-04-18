import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupShowPage extends HookConsumerWidget {
  final int id;

  const GroupShowPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        // bottomNavigationBar: Footer(),
      ),
      // resizeToAvoidBottomInset: false,
        // bottomNavigationBar: Footer(),
      // bottomNavigationBar: null,
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
  }
}
