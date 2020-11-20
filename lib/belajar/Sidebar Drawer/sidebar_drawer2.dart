import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Detail $nama"),
          backgroundColor: Colors.green,
        ),
        body: new Container(
            child: new Center(
                child: new Image(
          image: new NetworkImage(gambar),
        ))));
  }
}
