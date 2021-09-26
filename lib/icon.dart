import 'package:flutter/material.dart';
import 'constant.dart';

class My_col extends StatelessWidget {
  final IconData i;
  final String t;
  My_col(this.i,this.t);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          t,
          style:kcontTextStyle1,
          ),
      ],
    );
  }
}
