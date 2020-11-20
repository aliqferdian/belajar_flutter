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
          child: new Card(
              child: new Column(
        children: <Widget>[
          new Image.asset(
            "img/$gambar",
            fit: BoxFit.cover,
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
