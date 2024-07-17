import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({superkey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.all(10),
          color: Colors.grey,
          child: Center(
            child: Text('Home'),
          ),
        ),
        Row(
          children: [
            FlutterLogo(
              size: 50,
            ),
            
          ],
        )
      ]
    );
  }
}