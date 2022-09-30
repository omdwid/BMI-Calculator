import 'package:flutter/material.dart';

class custom_container extends StatelessWidget {
  final Widget? child;
  final Color? colour;
  Function()? function;
  custom_container({required this.colour, this.child, this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function,
      child: Container(
        child: this.child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
