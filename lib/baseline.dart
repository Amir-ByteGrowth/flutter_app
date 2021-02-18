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
              height: 200,
              width: 200,
              color: Colors.teal,
              child: Center(
                child: Baseline(
                  baseline: -75,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    ),
  ));
}
