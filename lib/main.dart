import 'package:colors/screens/Pages/Signupcreated.dart';
import 'package:colors/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'screens/signup_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signuppage(),
    );
  }
}
