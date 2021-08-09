import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:flutter_blog/util/validator_util.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              alignment: Alignment.center,
              child: Text(
                "회원가입 페이지",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _joinForm(),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Username",
            funValidator: validateUsername(),
          ),
          CustomTextFormField(
            hint: "PassWord",
            funValidator: validatePassword(),
          ),
          CustomTextFormField(
            hint: "Email",
            funValidator: validateEmail(),
          ),
          CustomElevatedButton(
            text: "회원가입",
            funPageRoute: () {
              if (_formKey.currentState!.validate()) {
                Get.to(LoginPage());
              }
            },
          ),
          TextButton(
            onPressed: () {
              Get.to(LoginPage());
            },
            child: Text("로그인 페이지로 이동"),
          ),
        ],
      ),
    );
  }
}
