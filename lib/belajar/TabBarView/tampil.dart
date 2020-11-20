import 'package:flutter/material.dart';
import 'package:coba_flutter/belajar/TabBarView/Hal_mahasiswa.dart'
    as mahasiswa;
import 'package:coba_flutter/belajar/TabBarView/Hal_dosen.dart' as dosen;
import 'package:coba_flutter/belajar/TabBarView/Hal_ukm.dart' as ukm;
import 'package:coba_flutter/belajar/TabBarView/Hal_belajar.dart' as belajar;
import 'package:coba_flutter/main.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // controller = new TabController(vsync: this, length: 4);
    // super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("MCN Official"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.phone_android),
              text: "Pemilik",
            ),
            new Tab(
              icon: new Icon(Icons.book),
              text: "Pelanggan",
            ),
            new Tab(
              icon: new Icon(Icons.beach_access),
              text: "Buku Hutang",
            ),
            new Tab(
              icon: new Icon(Icons.book_online_outlined),
              text: "Profesi",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new mahasiswa.Mahasiswa(),
          new dosen.Dosen(),
          new ukm.UKM(),
          new belajar.Belajar(),
          // new haldua.HalDua(),
        ],
      ),
//       // bottomNavigationBar: new Material(
//       //   color: Colors.blue,
//       //   child: new TabBar(
//       //     controller: controller,
//       //     tabs: <Widget>[
//       //       new Tab(
//       //         icon: new Icon(Icons.phone_android),
//       //         text: "Mahasiswa",
//       //       ),
//       //       new Tab(
//       //         icon: new Icon(Icons.book),
//       //         text: "Dosen",
//       //       ),
//       //       new Tab(
//       //         icon: new Icon(Icons.beach_access),
//       //         text: "UKM",
//       //       ),
//       //     ],
//       //   ),
//       // ),
    );
  }
}
