import 'package:flutter/material.dart';
//확대해도 안 깨지는 라이브러리
import 'package:flutter_login/componets/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 200),
          Logo("Care Soft"),
          SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Get Started"),
          )
        ],
      ),
    );
  }
}
