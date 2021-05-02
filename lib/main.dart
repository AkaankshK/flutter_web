import 'package:flutter/material.dart';
import 'package:flutter_web/Views/home.dart';
import 'package:flutter_web/Views/toyotaServiceHistory.dart';
import 'package:flutter_web/Views/toyotaServiceReport.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android, iOS & Web | Flutter Development',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

