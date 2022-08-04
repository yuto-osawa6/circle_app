import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final int now_page;
  final void Function(int) onTapItem;

  const Footer({
    Key? key, 
    required this.now_page, required this.onTapItem
  }) 
  : super(key: key);

  @override
  State<Footer> createState() => _Footer();
}

class _Footer extends State<Footer> {
//  var _selectIndex = 0;
  var _selectIndex = 0;
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
  Widget build(BuildContext context) {
    print(widget.now_page);
    // print(_selectIndex);
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
      currentIndex: widget.now_page, //選択中のインデックス
      onTap: widget.onTapItem
    );
  }
}