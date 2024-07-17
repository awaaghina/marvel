import 'package:flutter/material.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/list.view/latihan.dart';
import 'package:myapp/list.view/list_builder.dart';
import 'package:myapp/list.view/list_separated.dart';
import 'package:myapp/marvel/marvel.dart';
import 'package:myapp/row.column/column_widget.dart';
import 'package:myapp/row.column/latihan.dart';
import 'package:myapp/row.column/row_column_widget.dart';
import 'package:myapp/row.column/row_widget.dart';
import 'package:myapp/screen/home_screen.dart';
import 'package:myapp/screen/about_screen.dart';
import 'package:myapp/screen/wisata_screen.dart';
import 'package:myapp/screen/detail_wisata_screen.dart';
import 'package:myapp/marvel/home_marvel.dart';
import 'package:myapp/marvel/detail_marvel.dart';
import 'package:myapp/marvel/about_marvel.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeMarvel(),
        '/about': (context) => const AboutMarvel(),
        '/marvel' : (context) => ListMarvel(),
        
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeMarvel(),
      ),
    );
  }
}