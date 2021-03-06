import 'package:flutter/material.dart';
import 'input page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF131226),
        scaffoldBackgroundColor: Color(0xFF131226),
      ),
      home: InputPage(),
    );
  }
}

