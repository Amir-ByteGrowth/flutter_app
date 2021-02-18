import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InheritedDataProvider.dart';

class InheritedDataWidgetGrandchild extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context) {
    final data = InheritedDataProvider.of(context).myDataClass;
    return Container(
      child: Column(
        children: <Widget>[
          Divider(),
          Text("Grand Child"),
          Text("${data.counter.toString()}"),

        ],
      ),
    );
  }
}