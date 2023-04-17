import 'package:circle_app/ui/common/footer/footer.dart';
import 'package:circle_app/ui/page/calendar/calendar.dart';
import 'package:circle_app/ui/page/group/group_show.dart';
import 'package:circle_app/ui/page/groupfrends/groupfrends.dart';
import 'package:circle_app/ui/page/home/home.dart';
import 'package:circle_app/ui/page/main.dart';
import 'package:circle_app/ui/page/talk/talk.dart';
import 'package:circle_app/ui/page/timeline/timeline.dart';
import 'package:circle_app/utils/method/getLanguage.dart';
import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubPage extends HookConsumerWidget {
  // MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = MainPage();
          if (settings.name == 'groupShow') {
            final id = settings.arguments as int?;
            page = GroupShowPage(id: id ?? 0);
          }
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
