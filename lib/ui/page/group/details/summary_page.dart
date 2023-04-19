import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SummaryPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final summary = useMemoized(() => getSummaryData(), []);
    return Scaffold(
      body: Center(
        child: Text(summary),
      ),
    );
  }

  String getSummaryData() {
    // ここで概要データを取得する処理を実装する
    return '概要ページのデータ';
  }
}