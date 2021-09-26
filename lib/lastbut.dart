import 'package:flutter/material.dart';
import 'constant.dart';

class lastbutton extends StatelessWidget {
  lastbutton({this.onp,this.tex});
  final Function onp;
  final String tex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onp,
      child: Container(
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(tex,
              style: kcontTextStyle1.copyWith(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
