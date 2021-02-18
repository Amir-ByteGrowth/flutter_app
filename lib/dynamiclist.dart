import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProducBox extends StatelessWidget {
  ProducBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Card(
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Center(
                    child: Text(image),
                  )),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(name),
                    Text(price.toString()),
                    Text(description)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ProductData {
  String name;
  String description;
  String image;
  int price;

  ProductData({this.name, this.description, this.image, this.price});
}

void main() {
  List<ProductData> productList = List.from([
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123),
    ProductData(
        name: "Amir", description: "Owner", image: "Not available", price: 123)
  ], growable: false);

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
            decoration: BoxDecoration( border: Border.all(width: 2,color: Colors.black)),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(12),
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProducBox(
                  name: productList[index].name,
                  description: productList[index].description,
                  price: productList[index].price,
                  image: productList[index].image,
                );
              },
            ),
          )),
    ),
  ));
}
