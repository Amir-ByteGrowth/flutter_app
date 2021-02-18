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
        body: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              Padding(
                padding: EdgeInsets.all(10),
                child: LimitedBox(
                  maxHeight: 100,
                  maxWidth: 150,
                  child: Container(
                    color: Colors.cyanAccent,
                    child: Text("Amir jaskdjksd \n asdsjdhasj \n asjdasjhdas \n asjhdasd \n daskjdasjd \n sadsajk \nAmir jaskdjksd \n asdsjdhasj \n asjdasjhdas \n asjhdasd \n daskjdasjd \n sadsajk"),
                  ),
                ),
              )
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
