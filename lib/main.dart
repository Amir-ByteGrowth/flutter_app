import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/InheritedWidgetEx.dart';
import 'package:flutter_app/SimpleSendData.dart';

import 'SendAndRecieveData.dart';

class PageItem extends StatelessWidget {
  String pageTitle;
  int index;

  PageItem({this.pageTitle, this.index});

  void navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SimpleSendData(title: "First Page")));
        }
        break;
      case 1:
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SendAndRecieveData(title: "Send And Receive")));
        }

        break;
      case 2:
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      InheritedWidgetEx(title: "Inherited Widget")));
        }

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Card(
        child: Container(
          height: 40,
          child: Center(
            child: Text(pageTitle),
          ),
        ),
      ),
      onTap: () {
        navigateToPage(index, context);
      },
    );
  }
}

void main() {
  var pageNameList = [
    "Simple Sending Data",
    "Send And Recieve",
    "Inherited Widget",
    "Inherited Widget generic",
    "Inherited Widget and streams",
    "Inherited AppConfig",
    "Singleton",
    "Singleton BLoc",
    "Callbacks"
  ];
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
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            child: ListView.builder(
              shrinkWrap: false,
              padding: EdgeInsets.all(10),
              itemCount: pageNameList.length,
              itemBuilder: (BuildContext buildcontext, int index) {
                return PageItem(
                  pageTitle: pageNameList[index],
                  index: index,
                );
              },
            ),
          )),
    ),
  ));
}
