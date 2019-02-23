import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Center(
            child: new Container(
                color: Colors.black26,
                width: 200.0,
                height: 200.0,
                child: new Center(
                  child : new Text(
                    "HALO BOSQUE BEN",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )) //,
            ));
  }
}
