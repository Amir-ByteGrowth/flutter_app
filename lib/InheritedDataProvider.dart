import 'package:flutter/cupertino.dart';
import 'package:flutter_app/mydataclass.dart';

class InheritedDataProvider extends InheritedWidget {
  MyDataClass myDataClass;

  InheritedDataProvider({
    Widget child,
    this.myDataClass,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedDataProvider oldWidget) =>
      myDataClass != oldWidget.myDataClass;

  static InheritedDataProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
