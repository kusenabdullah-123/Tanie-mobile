import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget splashscreen = SplashScreenView(
      navigateRoute: const IntroPage(),
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
