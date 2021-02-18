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
            child: Container(
              width: 200,
              height: 100,
              color: Colors.lightGreen,
              child: FractionallySizedBox(
                widthFactor: 0.75,
                heightFactor: 0.35,
                alignment: Alignment.topCenter,
                child: RaisedButton(
                  child: Text("Button",style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                  hoverColor: Colors.cyanAccent,
                ),
              ),
            )),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    ),
  ));
}
