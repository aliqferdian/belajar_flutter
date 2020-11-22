import 'package:coba_flutter/belajar/Sidebar%20Drawer/sidebar_drawer2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Wonderful Lombok",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<Container> lokasiLiburan = new List();

  var karakter = [
    {"Nama ": "Tanjung Ann", "Gambar ": "ann.jpg"},
    {"Nama ": "Pantai Kura - Kura", "Gambar ": "kurakura.jpg"},
    {"Nama ": "Pantai Kuta", "Gambar ": "kuta.jpg"},
    {"Nama ": "Pantai Pandanan", "Gambar ": "pandanan.jpg"},
    {"Nama ": "Pantai Pink", "Gambar ": "pink.jpg"},
    {"Nama ": "Pantai Sengigi", "Gambar ": "senggigi.jpg"},
  ];

  _buatList() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["Gambar "];

      lokasiLiburan.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: karakternya['Nama '],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detail(),
                    )),
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Text(
                karakternya['Nama '],
                style: new TextStyle(fontSize: 18.0),
              ),
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatList();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Wonderful Lombok",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: lokasiLiburan,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});

  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Image.asset("img/$gambar"),
          )
        ],
      ),
    );
  }
}
