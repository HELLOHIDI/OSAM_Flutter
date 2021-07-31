import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter/src/widgets/container.dart';

class ProfileCountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Spacer(),
        _buildInfo("50", "Posts"),
        //Spacer(),
        _buildLine(),
        //Spacer(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        //Spacer(),
        _buildInfo("3", "Share"),
      ],
    );
  }
}

Widget _buildInfo(String count, String title) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(height: 2),
      Text(
        title,
        style: TextStyle(fontSize: 15),
      ),
    ],
  );
}

Widget _buildLine() {
  return Container(
    color: Colors.blue,
    width: 2,
    height: 60,
  );
}
