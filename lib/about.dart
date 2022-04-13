import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Blogs'),
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
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                        child: Text(
                          "Informasi Dan Berita",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(54, 176, 132, 1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(13),
                        bottomLeft: Radius.circular(13))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/header-image-blog.png'))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Image(image: AssetImage('assets/blog1.png')),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Harga kebutuhan pangan melesat, \nBegini tanggapan Lesti',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                  ),
                                ),
                                Text('Jumat, 20 maret 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color.fromRGBO(204, 204, 204, 1))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Image(image: AssetImage('assets/blog1.png')),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Harga kebutuhan pangan melesat, \nBegini tanggapan Lesti',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                  ),
                                ),
                                Text('Jumat, 20 maret 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color.fromRGBO(204, 204, 204, 1))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Image(image: AssetImage('assets/blog1.png')),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Harga kebutuhan pangan melesat, \nBegini tanggapan Lesti',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                  ),
                                ),
                                Text('Jumat, 20 maret 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color.fromRGBO(204, 204, 204, 1))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Image(image: AssetImage('assets/blog1.png')),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Harga kebutuhan pangan melesat, \nBegini tanggapan Lesti',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                  ),
                                ),
                                Text('Jumat, 20 maret 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color.fromRGBO(204, 204, 204, 1))),
                    ),
                  ],
                ),
              )
            ]))
          ],
        )));
  }
}
