import 'package:bottom_navigation/restaurants.dart';
import 'package:bottom_navigation/home.dart';
import 'package:bottom_navigation/more.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {

  int _currentIndex = 0;

  List<Widget> _views = [
    HomePage(),
    RestaurantsPage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu_outlined), label: 'Restaurants'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), label: 'More')
        ],
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
      )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}