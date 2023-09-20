import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edusure/pages/chat_home.dart';
import 'package:edusure/pages/home.dart';
import 'package:edusure/pages/library.dart';
import 'package:edusure/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // ignore: prefer_const_constructors
    UserHome(),
    UserLibrary(),
    UserChat(),
    UserSettings(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        color: Colors.white,
        index: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          Icon(Icons.home),
          Icon(Icons.book),
          Icon(Icons.message),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
