import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/RecieveData.dart';
import 'package:flutter_app/mydataclass.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class SimpleSendData extends StatefulWidget {
  SimpleSendData({this.title});

  String title;

  @override
  _SimpleSendData createState() => _SimpleSendData(title: title);
}

class _SimpleSendData extends State<SimpleSendData> {
  _SimpleSendData({this.title});

  String title;
  String dt = DateTime.now().toString();

  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void getCurrentDate() {
    Fluttertoast.showToast(
        msg: dt,
        toastLength: Toast.LENGTH_SHORT,
        fontSize: 16,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.black87);
  }

  void navigateToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => RecieveData(
         dataClass: MyDataClass(description:"Data from sender class",counter:counter,dt:dt),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "First Page",
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_left_outlined),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  SystemNavigator.pop();
                }
              },
            ),
          ),
          body: Center(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Text(
                  "Passing this data to the new page through the constructor",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),key: Key("token"),
                ),
                Text("Text Lorem ipsum"),
                Text("Counter $counter"),
                Text(
                  dt,
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Lorem Ipsum',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Increment Counter"),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    getCurrentDate();
                  },
                  child: Text("Get Date Time"),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {navigateToNextPage(context);},
                  child: Text("Send data to second page"),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
