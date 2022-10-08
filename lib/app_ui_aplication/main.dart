import 'package:flutter/material.dart';
import 'package:flt_lrn/app_ui_aplication/pages/details_page.dart';
import 'package:flt_lrn/app_ui_aplication/pages/homepage/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomepageScreen(),
    );
  }
}
