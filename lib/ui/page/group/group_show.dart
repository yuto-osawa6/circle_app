import 'package:circle_app/model/api/group/group.dart';
import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/page/group/details/group_chat.dart';
import 'package:circle_app/ui/page/group/details/summary_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupShowPage extends HookConsumerWidget {
  final int id;
  final Group group;
  const GroupShowPage({Key? key, required this.id, required this.group}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabController = useTabController(initialLength: 4);
    print(group);
    print("GroupShowDart");
    return Scaffold(
      appBar:AppBar(
        title: Text('My App'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              // メニュー項目が選択された時の処理
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'item1',
                child: Text('メニュー項目1'),
              ),
              const PopupMenuItem<String>(
                value: 'item2',
                child: Text('メニュー項目2'),
              ),
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                '概要',
                textScaleFactor: 1.0,
              ),
            ),
            Tab(
              child: Text(
                'コミュニティー',
                textScaleFactor: 1.0,
              ),
            ),
            Tab(
              child: Text(
                'カレンダー',
                textScaleFactor: 1.0,
              ),
            ),
            Tab(
              child: Text(
                'カレンダー',
                textScaleFactor: 1.0,
              ),
            ),
          ],

          isScrollable: true
        ),
      ),
      // resizeToAvoidBottomInset: false,
        // bottomNavigationBar: Footer(),
      // bottomNavigationBar: null,
      body: TabBarView(
        controller: _tabController,
        children: [
          SummaryPage(),
          GroupChatPage(groupChatId: id),
          SummaryPage(),
          SummaryPage(),
          // CommunityPage(),
          // CalendarPage(),
          // CalendarPage(),
        ],
      ),
    );
  }
}
