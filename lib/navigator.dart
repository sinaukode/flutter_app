import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigator',
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/HalamanSatu': (BuildContext context)=> new HalamanSatu(),
      '/HalamanDua': (BuildContext context)=> new HalamanDua(),
    },
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
            'Halaman Satu',
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new CardSaya(icon : Icons.home, teks: "Home", warna: Colors.blue,navigation: '/HalamanDua'),
          new CardSaya(icon : Icons.access_time, teks: "Time", warna: Colors.blue),
          new CardSaya(icon : Icons.settings, teks: "Setting", warna: Colors.blue),

        ],
      )),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        backgroundColor: Colors.red[800],
        title: new Center(
          child: new Text(
            'Halaman Dua',
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new CardSaya(icon : Icons.home, teks: "Home", warna: Colors.red, navigation: '/HalamanSatu',),
              new CardSaya(icon : Icons.access_time, teks: "Time", warna: Colors.red),
              new CardSaya(icon : Icons.settings, teks: "Setting", warna: Colors.red),

            ],
          )),
    );
  }
}



//membuat class sendiri lalu di deklarasi di main fungsi
class CardSaya extends StatelessWidget {

  CardSaya({this.icon,this.teks,this.warna,this.navigation});
  final IconData icon;
  final String teks;
  final Color warna;
  final String navigation;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(5),
      child: new Card(
          child: new Column(
            children: <Widget>[
              new IconButton(
                  icon: new Icon(icon, size: 30, color: warna),
                onPressed: (){
                  Navigator.pushNamed(context, navigation);
                },),
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
