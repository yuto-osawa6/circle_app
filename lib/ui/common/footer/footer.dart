import 'package:circle_app/view_model/navigate_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class Footer extends StatefulWidget {
//   final int now_page;
//   final void Function(int) onTapItem;

//   const Footer({
//     Key? key, 
//     required this.now_page, required this.onTapItem
//   }) 
//   : super(key: key);

//   @override
//   State<Footer> createState() => _Footer();
// }

// class Footer extends State<Footer> {
class Footer extends HookConsumerWidget {
//  var _selectIndex = 0;
  // var _selectIndex = 0;
  // var _pages = <Widget>[
  //   Page1(),
  //   Page2(),
  //   Page3(),
  // ];
  // void _onTapItem(int index) {
  //   setState(() {
  //     _selectIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _NavigateActionState = ref.watch(NavigateActionProvider);
    final _NavigateActionNotifier = ref.watch(NavigateActionProvider.notifier);
    // final now_page = useState(0);
    // print(widget.now_page);
    // print(_selectIndex);
    // _NavigateActionState.page;
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