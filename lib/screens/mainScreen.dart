import 'package:flutter/material.dart';
import 'package:prototypekart/screens/homeScreen.dart';
import 'package:prototypekart/screens/profile.dart';
import 'package:prototypekart/screens/search.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();
  int currentIndex = 0;
  changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpTo(index.toDouble());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: changeScreen,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store')
            ],
          ),
          body: PageView(
            controller: _pageController,
            children: [HomeScreen(), ProfileScreen(), SearchScreen()],
          ),
        ),
      ),
    );
  }
}
