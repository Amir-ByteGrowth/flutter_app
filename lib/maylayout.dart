import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation Menu",
              onPressed: null,
            ),
            title: Text("Scaffold"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: null)
            ],
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.red,
                  ),
                ),
                Container(

                  child: Center(
                    child: Text("Amir"),
                  ),
                ),

              ],
            ),
          )),
    ),
  ));
}
