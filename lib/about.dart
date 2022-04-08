import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Tanie'),
        backgroundColor: const Color.fromRGBO(54, 176, 132, 1),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the About page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
