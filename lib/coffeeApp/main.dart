import 'package:flutter/material.dart';
import 'package:flt_lrn/coffeeApp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  String title = 'My morning cofee';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: HomePage(title: title),
    );
  }
}
