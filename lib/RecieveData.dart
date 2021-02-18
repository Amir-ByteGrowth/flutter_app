import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/mydataclass.dart';

class RecieveData extends StatefulWidget {
  RecieveData({this.dataClass});

  MyDataClass dataClass;

  @override
  _RecieveData createState() => _RecieveData(myDataClass: dataClass);
}

class _RecieveData extends State<RecieveData> {
  _RecieveData({this.myDataClass});

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

              ],
            ),
          ),
        )

        ,
      ),
    ));
  }
}
