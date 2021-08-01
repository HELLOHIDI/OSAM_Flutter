import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter/src/material/text_button_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            //styleFrom 기억하기! 버튼 디자인 할때
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      //초기화면
      initialRoute: "/login",
      //routes
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
