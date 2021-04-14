import 'package:flutter/material.dart';
import 'package:flutter_doctor_cunsultant/pages/appointment_page.dart';
import 'package:flutter_doctor_cunsultant/pages/home_page.dart';
import 'package:flutter_doctor_cunsultant/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage()
    );
  }
}
