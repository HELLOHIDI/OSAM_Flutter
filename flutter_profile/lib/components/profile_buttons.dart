import 'package:flutter/material.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'package:flutter/src/painting/alignment.dart';

class ProfileButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildFollowButton(),
        Spacer(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        print("Follow button is clicked");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.red),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print("Message button is clicked");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Massage",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
