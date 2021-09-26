import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'reuseablecard.dart';
import 'lastbut.dart';

class ResultPage extends StatelessWidget {

  ResultPage(this.a,this.b,this.c);
  final String a;
  final String b;
  final String c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'Your Result',
              style: kcontTextStyle2.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              kcolourback,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      b,
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                        textAlign: TextAlign.center
                    ),
                  ),
                  Center(
                    child: Text(a,style: kcontTextStyle2.copyWith(
                        fontSize: 100.0,
                      ),
                    ),
                  ),
                  Center(child: Text(c,style: TextStyle(
                    fontSize: 22,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,),),
                ],
              ),
            ),
          ),
        lastbutton(onp: () {
          Navigator.pop(context);
          },tex: 'RECALCULATE'),
        ]
      ),
    );
  }
}
