// import 'package:flutter/material.dart';
//
// class CBottomNavigationBar extends StatefulWidget {
//   const CBottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   State<CBottomNavigationBar> createState() => _CBottomNavigationBar();
// }
//
// class _CBottomNavigationBar extends State<CBottomNavigationBar> {
//   int _selectedIndex = 1;
//
//   void _onTapNavigatorBarItem(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      type: BottomNavigationBarType.fixed,
//      currentIndex: _selectedIndex, //현재 선택된 Index
//      onTap: _onTapNavigatorBarItem,
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//          title: Text('Favorites'),
//          icon: Icon(Icons.favorite),
//        ),
//        BottomNavigationBarItem(
//          title: Text('Music'),
//          icon: Icon(Icons.music_note),
//        ),
//        BottomNavigationBarItem(
//          title: Text('Places'),
//          icon: Icon(Icons.location_on),
//        ),
//      ],
//    );
//   }
// }