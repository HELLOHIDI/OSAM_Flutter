import 'package:flutter/material.dart';
import 'package:flutter_login/componets/logo.dart';
import 'package:flutter_login/componets/custom_text_from_field.dart';
import 'package:flutter_login/size.dart';
import 'package:flutter_login/componets/custom_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            SizedBox(height: large_gap),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
