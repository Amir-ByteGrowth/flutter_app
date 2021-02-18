import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            Text("data"),
            Expanded(
                child: Center(
                    child: ElevatedButton(
                        onPressed: _increment, child: Text("Increment")))),
            Text("Num $_counter")
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        print("On Tap clciked");
      },
      child: Container(
        height: 100.0,
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(child: Text("Engine")),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
      ),
    );
  }
}

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
        body: Center(
          child: Center(
              child: Column(
                children: <Widget>[
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Hello",
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: "World",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Hello",
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: "World",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
                  Image.network(
                    "https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true",
                    width: 100,
                    height: 100,
                    alignment: AlignmentGeometry.lerp(Alignment.bottomCenter, Alignment.bottomLeft, 10),
                  ),
                  // Image.asset('assets/download.png'),
                  // Image.asset('assets/notification.jpg')

                  Icon(Icons.access_alarm)
                ],
              )),
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
