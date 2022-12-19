import 'package:colors/Classes/Dimentions.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  final String imgpart;
  categories({required this.imgpart});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.cartheight,
      width: Dimentions.cartwidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgpart),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
