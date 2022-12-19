import 'dart:ui';

import 'package:colors/Classes/Dimentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:colors/Classes/Dimentions.dart';

class titles extends StatelessWidget {
  final String name;
  final Color colors;

  titles({
    required this.name,
    this.colors = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimentions.width5),
      child: Container(
        child: Row(
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: Dimentions.fontsize15,
              ),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        decoration: BoxDecoration(
          color: colors,
        ),
      ),
    );
  }
}
