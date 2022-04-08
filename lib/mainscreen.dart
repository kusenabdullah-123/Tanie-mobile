import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
        body: SafeArea(
            child: Column(
          children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Text(
                        "Teman Bertani mu",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.search_outlined),
                                  tooltip: 'Search',
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text('Searching...'),
                                      content: const Text('Welcome to Search'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 1,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(54, 176, 132, 1)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 123,
                width: 342,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "6 Manfaat buah jeruk salah satunya menurunkan kolesterol",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "Mengonsumi Buah-Buahan Merupakan Satu Dari Sekian Cara Untuk Menjaga Kesehatan Tubuh.",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    )),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/orange.png'))),
              ),
            )
          ],
        )));
  }
}
