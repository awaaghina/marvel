import 'package:flutter/material.dart';
import 'package:myapp/list.view/list_basic.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: ListSeparated(),
    ));

class ListSeparated extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          height: 10,
          color: Colors.black,
        );
      },
      itemCount: androidVersions.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: Text(androidVersions[index]),
        );
      },
    );
  }
}
