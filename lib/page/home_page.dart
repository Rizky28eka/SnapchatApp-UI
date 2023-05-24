import 'package:flutter/material.dart';
import 'reels_page.dart';
import 'stories_page.dart';
import 'caemra_page.dart';
import 'chat_page.dart';
import 'initial_page.dart';
import 'location_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    LocationPage(),
    ChatPage(),
    CameraPage(),
    StoriesPage(),
    ReelPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.location_on_outlined,
              size: 25.0,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 25.0,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 25.0,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group_outlined,
              size: 25.0,
              color: Color(0XFF10ACFF),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.play_arrow_outlined,
              size: 25.0,
              color: Colors.white,
            ),
            label: "",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0XFF10ACFF),
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
