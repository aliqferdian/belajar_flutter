import 'package:flutter/material.dart';

class Belajar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Listutorial(
            gambar: "img/dosen.JPG",
            judul: "Miftahul Firdaus",
          ),
          new Listutorial(
            gambar: "img/dana.JPG",
            judul: "Ramadana Pratama",
          ),
          new Listutorial(
            gambar: "img/rspct1.jpg",
            judul: "Cara Buka Puasa Bersama",
          ),
          new Listutorial(
            gambar: "img/rspct3.jpg",
            judul: "Ekskul Pramuka MAN 2 Mataram",
          )
        ],
      ),
    );
  }
}

class Listutorial extends StatelessWidget {
  Listutorial({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Image.asset(gambar, width: 250.0),
            new Container(
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    "Penjelasan Judul",
                    style: new TextStyle(fontSize: 10.0),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
