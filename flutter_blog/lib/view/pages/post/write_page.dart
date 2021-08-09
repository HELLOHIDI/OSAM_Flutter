import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_textarea.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/controller/post_controller.dart';
import 'package:get/get.dart';

class WritePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _content = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                controller: _title,
                hint: "Title",
                funValidator: validateTitle(),
              ),
              CustomTextArea(
                controller: _content,
                hint: "Content",
                funValidator: validateContent(),
              ),
              CustomElevatedButton(
                text: "글쓰기",
                funPageRoute: () async {
                  if (_formKey.currentState!.validate()) {
                    //먼가 호출함수!!
                    await Get.find<PostController>().save(_title.text, _content.text);
                    Get.off(() => HomePage());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
