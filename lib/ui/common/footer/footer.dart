import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Footer extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _NavigateActionState = ref.watch(NavigateActionProvider);
    final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timeline),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: (''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delivery_dining),
          label: (''),
        ),
      ],
      currentIndex: _NavigateActionState.page, //選択中のインデックス
      onTap: _NavigateActionNotifier.onTapItem
    );
  }
}