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

        Container(

          height: 200,
          decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              border: Border.all(color: Colors.black, width: 2)),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 180,

                  child: Center(
                    child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Center(child:Text("Image") ,)
                    ),
                  ),
                ),
                Expanded(child:
                Padding(padding: EdgeInsets.all(10),
                  child:   Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            )
                        ),
                        child: Center(
                          child: Text("Amir 1"),
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            )
                        ),
                        child: Center(
                          child: Text("Amir 1"),
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black
                            )
                        ),
                        child: Center(
                          child: Text("Amir 1"),
                        ),
                      )
                    ],
                  ) ,)
                )

              ],
            ),
          ),
        )
        ,
      ),
    ),
  ));
}
