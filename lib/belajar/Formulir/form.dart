import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> agama = [
    "Islam",
    "Hindu",
    "Kristen",
    "Katholik",
    "Protestan",
    "Budha"
  ];
  String _agama = "Islam ";
  String _jk = "";

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Formulir"),
        backgroundColor: Colors.teal,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(12.0),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  maxLines: 3,
                  decoration: new InputDecoration(
                      hintText: "Cerita mengesankan",
                      labelText: "Cerita ",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new RadioListTile(
                  value: "Laki-Laki",
                  title: new Text("Laki-Laki"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.teal,
                ),
                new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.teal,
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new DropdownButton(
                  items: agama.map((String value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
