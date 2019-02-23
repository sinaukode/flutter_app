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
          child:    new Text('Beni Tutorial',
            style: new TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
    );
  }
}
