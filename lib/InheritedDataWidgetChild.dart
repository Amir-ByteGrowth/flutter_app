import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InheritedDataProvider.dart';
import 'InheritedDataWidgetGrandchild.dart';

class InheritedDataWidgetChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = InheritedDataProvider.of(context).myDataClass;
    return Container(
      child: Column(
        children: <Widget>[
          Divider(),
          Text("Child"),
          Text("${data.counter.toString()}"),
          InheritedDataWidgetGrandchild()
        ],
      ),
    );
  }
}