import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Ini Row 1 Isi 1'),
        Text('Ini Row 1 Isi 2'),
        Text('Ini Row 1 Isi 3'),
      ],
    );
  }
}