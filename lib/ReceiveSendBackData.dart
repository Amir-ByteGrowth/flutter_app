import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/mydataclass.dart';

class ReceiveSendBackData extends StatefulWidget {
  ReceiveSendBackData({this.dataClass});

  MyDataClass dataClass;

  @override
  _ReceiveSendBackData createState() =>
      _ReceiveSendBackData(myDataClass: dataClass);
}

class _ReceiveSendBackData extends State<ReceiveSendBackData> {
  _ReceiveSendBackData({this.myDataClass});

  MyDataClass myDataClass;

  void increment() {
    setState(() {
      myDataClass.counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Reciever Class"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Card(
        elevation: 10,
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(myDataClass.description),
                Text(myDataClass.dt),
                Text("" + myDataClass.counter.toString()),
                RaisedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Increment"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, myDataClass);
                  },
                  child: Text("Back Result"),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
