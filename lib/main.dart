import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: _cardBody(),
      ),
    );
  }

  Widget _challange() {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(height: 100, width: 100, color: Colors.green[400])
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
          ),
        ],
      ),
    );
  }

  Widget _cardBody() {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://i.vimeocdn.com/portrait/24254779_300x300"),
              ),
//Alternatif olarak bu yapıda kullanılabilir...
//              Container(
//                height: 100,
//                width: 100,
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                        image: NetworkImage(
//                            "https://i.vimeocdn.com/portrait/24254779_300x300")),
//                    //shape: BoxShape.circle,
//                    borderRadius: BorderRadius.all(Radius.circular(60))),
//              ),
              Text("Angela Yu",
                  style: TextStyle(
                      fontFamily: "Calibri",
                      fontSize: 22,
                      color: Colors.white)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(fontFamily: "Pasifico", color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 120,
                endIndent: 120,
              ),
              SizedBox(
                height: 20,
                width: 500,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text("angela@gmail.com"),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  title: Text("+90 456 455555"),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  title: Text("+90 456 455555"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
