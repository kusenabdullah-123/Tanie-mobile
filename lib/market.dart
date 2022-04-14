import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Harga Pasar'),
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
                          "Informasi harga Pasar",
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
                            IconButton(
                              icon: const Icon(Icons.align_horizontal_right),
                              onPressed: () {},
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ]),
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(54, 176, 132, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
              ),
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
                    Container(
                        height: 133,
                        width: MediaQuery.of(context).size.width * 0.95,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(152, 152, 152, 1))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Cabai Hijau  Kecil",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Rp 33.000/kg",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(image: AssetImage('assets/chart.png'))
                            ],
                          ),
                        )),
                    Container(
                        height: 133,
                        width: MediaQuery.of(context).size.width * 0.95,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(152, 152, 152, 1))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Gula Pasir",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Rp 33.000/kg",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(image: AssetImage('assets/chart.png'))
                            ],
                          ),
                        )),
                    Container(
                        height: 133,
                        width: MediaQuery.of(context).size.width * 0.95,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(152, 152, 152, 1))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "MInyak Goreng",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Rp 33.000/kg",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image(image: AssetImage('assets/chart.png'))
                            ],
                          ),
                        )),
                  ],
                ),
              )
            ]))
          ],
        )));
  }
}
