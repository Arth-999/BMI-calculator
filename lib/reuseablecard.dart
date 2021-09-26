import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color c;
  final Widget w;
  final Function onpress;
  ReuseableCard(this.c,[this.w,this.onpress]);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onpress,
        child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: c),
        child: w,
    ),
      );
  }
}