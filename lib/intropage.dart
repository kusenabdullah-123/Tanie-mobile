import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/intro.png"),
        title: "Selamat datang di Tanie",
        body:
            "Masuk atau daftar ke platform Tanie. informasi terupdate dan tingkatkan hasil panen kamu sekarang",
      ),
      PageViewModel(
        image: Image.asset("assets/intro2.png"),
        title: "Informasi dari ahli ",
        body:
            "Informasi langsung dari ahli mulai dari penanaman, informasi distribusi pupuk, sampai harga pasar",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: getPages(),
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const Home()),
        );
      },
      onSkip: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const Home()),
        );
      },
      showBackButton: false,
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.black,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    ));
  }
}
