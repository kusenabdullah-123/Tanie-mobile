import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  List<Padding> getSlider() {
    return [
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
        child: Container(
          height: 150,
          child: Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 18, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "6 Manfaat buah jeruk salah satunya menurunkan kolesterol",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Text(
                    "Mengonsumi Buah-Buahan Merupakan Satu Dari Sekian Cara Untuk Menjaga Kesehatan Tubuh.",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              )),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/orange.png'))),
        ),
      ),
    ];
  }

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
            child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                        content:
                                            const Text('Welcome to Search'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
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
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
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
              CarouselSlider(
                  options: CarouselOptions(height: 140), items: getSlider()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Blogs"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/img1.png'))),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/img2.png'))),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]))
          ],
        )
            //     Column(
            //   children: [
            //     Container(
            //       child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             const Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            //               child: Text(
            //                 "Teman Bertani mu",
            //                 style: TextStyle(color: Colors.white),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.symmetric(
            //                   horizontal: 5, vertical: 5),
            //               child: Row(
            //                 children: [
            //                   Flexible(
            //                     child: TextField(
            //                       decoration: InputDecoration(
            //                         fillColor: Colors.white,
            //                         filled: true,
            //                         suffixIcon: IconButton(
            //                           icon: const Icon(Icons.search_outlined),
            //                           tooltip: 'Search',
            //                           onPressed: () => showDialog<String>(
            //                             context: context,
            //                             builder: (BuildContext context) =>
            //                                 AlertDialog(
            //                               title: const Text('Searching...'),
            //                               content: const Text('Welcome to Search'),
            //                               actions: <Widget>[
            //                                 TextButton(
            //                                   onPressed: () =>
            //                                       Navigator.pop(context, 'Cancel'),
            //                                   child: const Text('Cancel'),
            //                                 ),
            //                                 TextButton(
            //                                   onPressed: () =>
            //                                       Navigator.pop(context, 'OK'),
            //                                   child: const Text('OK'),
            //                                 ),
            //                               ],
            //                             ),
            //                           ),
            //                         ),
            //                         focusedBorder: const OutlineInputBorder(
            //                             borderSide:
            //                                 BorderSide(color: Colors.white)),
            //                         border: OutlineInputBorder(
            //                             borderRadius: BorderRadius.circular(8.0),
            //                             borderSide:
            //                                 const BorderSide(color: Colors.white)),
            //                         hintText: 'Search',
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             )
            //           ]),
            //       height: MediaQuery.of(context).size.height * 0.15,
            //       width: MediaQuery.of(context).size.width * 1,
            //       decoration:
            //           const BoxDecoration(color: Color.fromRGBO(54, 176, 132, 1)),
            //     ),
            //     CarouselSlider(
            //         options: CarouselOptions(height: 140), items: getSlider()),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(bottom: 10),
            //             child: Text("Blogs"),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Container(
            //                 height: MediaQuery.of(context).size.height * 0.25,
            //                 width: MediaQuery.of(context).size.width * 0.45,
            //                 decoration: const BoxDecoration(
            //                     image: DecorationImage(
            //                         image: AssetImage('assets/img1.png'))),
            //               ),
            //               Container(
            //                 height: MediaQuery.of(context).size.height * 0.25,
            //                 width: MediaQuery.of(context).size.width * 0.45,
            //                 decoration: const BoxDecoration(
            //                     image: DecorationImage(
            //                         image: AssetImage('assets/img2.png'))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // )
            ));
  }
}
