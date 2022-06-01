import 'package:flutter/material.dart';

class DetailPasarScreen extends StatelessWidget {
  const DetailPasarScreen({super.key, required this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Notification',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          automaticallyImplyLeading: false,
          title: Text(nama),
          backgroundColor: const Color.fromRGBO(54, 176, 132, 1),
          elevation: 0,
        ),
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 10, left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(
                        'Jawa timur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.95,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Kecamatan Genteng"),
                                    Text("50000")
                                  ],
                                ))),
                        Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.95,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color.fromRGBO(54, 176, 132, 1)),
                            child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Kecamatan Sempu",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "100000",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ))),
                        Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.95,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Kecamatan Tegalsari"),
                                    Text("70000")
                                  ],
                                ))),
                        Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.95,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: const Color.fromRGBO(54, 176, 132, 1)),
                            child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Kecamatan Banyuwangi",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "50000",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ))),
                      ],
                    )
                  ],
                ),
              )
            ]))
          ],
        )));
  }
}
