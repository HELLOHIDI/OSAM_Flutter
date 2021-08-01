import 'package:flutter/material.dart';
import 'package:flutter_login/componets/custom_text_from_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField(text: "Password"),
          TextButton(
            onPressed: () {
              // 유효성 검사 성공  true 리턴 아니면 false 리턴
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
