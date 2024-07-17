import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 215, 64, 1),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://mettanews.id/wp-content/uploads/2022/11/EFCE0EBB-BC0D-4B80-8E65-582822911DDF.jpeg'),
            fit: BoxFit.cover,
          ),
          ),
    child: Center(
      child: Text(
        "Wakanda Forever",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),),
      );
  }
}