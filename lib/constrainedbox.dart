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
        Column(
          children: <Widget>[
            Center(
              /** ConstrainedBox Widget **/
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(height: 200, width: 200),
                  child: Text(
                    "A Computer Science portal for geeks. It contains wel written,well thought and well explained computer scienceand programmingarticles, quizzes, interview experiencesand much more.",
                    style: TextStyle(fontSize: 15),
                  ), //Text
                )),
            Column(
              children: <Widget>[
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Container(
                    color: Colors.teal,
                    child: Text(
                      "whoola dot com hell is this you dont now",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 50,
                    minWidth: 200,
                  ),
                  child: RaisedButton(
                    color: Colors.teal,
                    child: Text(
                      "Button",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 100,
                    minHeight: 80,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 200,
                      minHeight: 30,
                    ),
                    child: RaisedButton(
                      color: Colors.teal,
                      child: Text('Woolha', style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 50,
                        maxHeight: 10,
                      ),
                      child: RaisedButton(
                        color: Colors.teal,
                        child:
                        Text('Woolha', style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      )),
                ),

              ],
            ),
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
