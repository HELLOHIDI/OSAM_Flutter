import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  final String time;

  const TimeLine({required this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFcafbe),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
