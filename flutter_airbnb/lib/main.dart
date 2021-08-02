import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_header.dart';
import 'package:flutter_airbnb/components/home/home_body.dart';
import 'package:flutter/src/material/app.dart';
import 'package:flutter_airbnb/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
