// ignore_for_file: deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:myproject/register_screen.dart';
import 'package:myproject/splashscreen.dart';
import 'package:myproject/theme/image_app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

