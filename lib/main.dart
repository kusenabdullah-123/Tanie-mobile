import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'mainscreen.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget splashscreen = SplashScreenView(
      navigateRoute: const Home(),
      duration: 5000,
      imageSize: 130,
      imageSrc: 'assets/tanieLogo.png',
      text: "Tanie",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      colors: const [Colors.white, Colors.blue],
      backgroundColor: const Color.fromRGBO(54, 176, 132, 1),
    );

    return MaterialApp(
      title: 'Tanie',
      home: splashscreen,
    );
  }
}

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
          AboutScreen(),
          // Container(color: Colors.greenAccent.shade700),
          // Container(color: Colors.orange),
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
            icon: const Icon(Icons.favorite),
            title: const Text('About'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          // BottomBarItem(
          //   icon: Icon(Icons.person),
          //   title: Text('Account'),
          //   activeColor: Colors.greenAccent.shade700,
          //   darkActiveColor: Colors.greenAccent.shade400,
          // ),
          // BottomBarItem(
          //   icon: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   activeColor: Colors.orange,
          // ),
        ],
      ),
    );
  }
}
