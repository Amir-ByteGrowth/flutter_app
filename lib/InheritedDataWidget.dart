import 'package:flutter/cupertino.dart';
import 'InheritedDataProvider.dart';
import 'InheritedDataWidgetChild.dart';

class InheritedDataWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final data = InheritedDataProvider.of(context).myDataClass;
    return Container(
      child: Column(
        children: <Widget>[
          Text("Parent"),
          Text("${data.counter.toString()}"),
          InheritedDataWidgetChild()
        ],
      ),
    );
  }
}