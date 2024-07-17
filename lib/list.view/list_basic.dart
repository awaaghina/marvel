import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrange,
  ),
  home: ListBasic(),
));

class ListBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Cupcake"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Donus"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Eclair"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Froyo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Gingerbread"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Honeycomb"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Ice Cream Sandwich"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Kitkat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Lollipop"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Marshmallow"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Nougat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Oreo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Pie"),
          ),
        ],
      ),
    );
  }
}