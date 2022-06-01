import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'mainscreen.dart';
import 'blog.dart';
import 'market.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          MainScreen(),
          MarketScreen(),
          AboutScreen(),
          ProfileScreen()
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        showActiveBackgroundColor: true,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: const Icon(Icons.show_chart),
            title: const Text('Chart'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: const Icon(Icons.newspaper),
            title: const Text('Blog'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
