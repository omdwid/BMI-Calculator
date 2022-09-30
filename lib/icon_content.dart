import 'package:flutter/material.dart';

class custom_icon extends StatelessWidget {
  IconData? i;
  String s = '';

  custom_icon({this.i, required this.s});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Icon(
            i,
            size: 60,
            color: Color.fromARGB(255, 225, 225, 231),
          ),
          flex: 2,
        ),
        Expanded(
            child: Text(
          s,
          style: TextStyle(color: Color(0xFF8D8E98)),
        )),
      ],
    );
  }
}