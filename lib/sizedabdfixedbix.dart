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
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: Text("This is explanation"),
                height: 20,
                width: 80,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: FittedBox(
                  child: Text("This is explanation"),
                ),
                height: 20,
                width: 80,
              ),SizedBox(
                height: 50,
              ),
              FittedBox(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.network(
                          "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    ),
                    Container(
                      child: Text(
                          "This is a sample text to understand FittedBox widget"),
                    )
                  ],
                ),
                alignment: Alignment.bottomRight,
              )
            ],
          ),
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
