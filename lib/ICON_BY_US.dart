import 'package:flutter/material.dart';


class Icon_made_by_us extends StatelessWidget {
  Icon_made_by_us(this.ic, this.fc);
  final IconData ic;
  final Function fc;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: fc,
      fillColor: Color(0xFF4C4F5E),
      child: Icon(ic),
      constraints: BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      shape: CircleBorder(),
    );
  }
}
