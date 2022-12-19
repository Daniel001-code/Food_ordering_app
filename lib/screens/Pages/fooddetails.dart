import 'package:flutter/material.dart';

class Newpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Take me back')),
    );
  }
}
