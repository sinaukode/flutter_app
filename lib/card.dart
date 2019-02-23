import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Beni Application',
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        backgroundColor: Colors.red[800],
        title: new Center(
          child: new Text(
            'Beni Tutorial',
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new CardSaya(icon : Icons.home, teks: "Home", warna: Colors.brown),
          new CardSaya(icon : Icons.access_time, teks: "Time", warna: Colors.blue),
          new CardSaya(icon : Icons.settings, teks: "Setting", warna: Colors.black),

        ],
      )),
    );
  }
}

//membuat class sendiri lalu di deklarasi di main fungsi
class CardSaya extends StatelessWidget {

  CardSaya({this.icon,this.teks,this.warna});
  final IconData icon;
  final String teks;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20),
      child: new Card(
          child: new Column(
            children: <Widget>[
              new Icon(icon, size: 70, color: warna),
              new Text(
                teks,
                style: new TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
