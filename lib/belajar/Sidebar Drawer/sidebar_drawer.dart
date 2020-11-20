import 'package:coba_flutter/belajar/Sidebar%20Drawer/sidebar_drawer2.dart';
import 'package:flutter/material.dart';
import 'package:coba_flutter/main.dart';
import './sidebar_drawer2.dart';

void main() {
  runApp(new MaterialApp(
    title: "Input Text",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String gambar1 =
      "https://images.unsplash.com/photo-1547491652-77d1920c5616?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  String gambar2 =
      "https://images.unsplash.com/photo-1562093772-c36f2d77edc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  String backup;

  String nama1 = "Khaliqul Wafiq";
  String nama2 = "Jason Randown";
  String backupNama;

  String email1 = "khaliqulwafiq@gmail.com";
  String email2 = "jasonrand321@gmail.com";
  String backupEmail;

  void gantiUser() {
    this.setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupNama = nama1;
      nama1 = nama2;
      nama2 = backupNama;

      backupEmail = email1;
      email1 = email2;
      email2 = backupEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Side Bar (Drawer)"),
        backgroundColor: Colors.blue,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(nama1),
              accountEmail: new Text(email1),
              currentAccountPicture: new GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          nama: nama1,
                          gambar: gambar1,
                        ))),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(gambar1),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                    onTap: () => gantiUser(),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(gambar2),
                    ))
              ],
            ),
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
                title: new Text("Close"), trailing: new Icon(Icons.close)),
          ],
        ),
      ),
    );
  }
}
