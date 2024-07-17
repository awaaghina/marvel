import 'package:flutter/material.dart';
 
class BelajarRowColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('latihan'),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text('latihan'),
          Text('latihan'),
        ],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('latihan'),
            Text('latihan'),
            Text('latihan'),
          ],)
      ],
    );
  }
}