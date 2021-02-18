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
        body:
        Row(
          children: <Widget>[
            Text("data"),
            Spacer(flex: 1,),
            Text("data"),
            Spacer(flex: 1,),
            Text("data"),
            Spacer(flex: 1,),
            Text("data"),
            Spacer(flex: 1,),

          ],
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
