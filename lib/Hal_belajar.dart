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
            penjelasanjudul: "Pak Polisi",
          ),
          new Listutorial(
            gambar: "img/dana.JPG",
            judul: "Ramadana Pratama",
            penjelasanjudul: "Trabasher",
          ),
          new Listutorial(
            gambar: "img/rspct1.jpg",
            judul: "Acara Buka Puasa Bersama",
            penjelasanjudul: "Kenangan",
          ),
          new Listutorial(
            gambar: "img/rspct3.jpg",
            judul: "Ekskul Pramuka MAN 2 Mataram",
            penjelasanjudul: "Kenangan",
          )
        ],
      ),
    );
  }
}

class Listutorial extends StatelessWidget {
  Listutorial({this.gambar, this.judul, this.penjelasanjudul});
  final String gambar;
  final String judul;
  final String penjelasanjudul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Image.asset(gambar, width: 300.0),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    penjelasanjudul,
                    style: new TextStyle(fontSize: 15.0),
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
