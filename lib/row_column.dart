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
        children: <Widget>[
          new Icon(Icons.accessibility, size: 70, color: Colors.red),
          new Row(
            children: <Widget>[
              new Icon(Icons.do_not_disturb, size: 70, color: Colors.blue),
              new Icon(Icons.do_not_disturb, size: 70, color: Colors.red),
              new Icon(Icons.do_not_disturb, size: 70, color: Colors.grey),
            ],
          ),
          new Icon(Icons.do_not_disturb, size: 70, color: Colors.blue)
        ],
      )),
    );
  }
}
