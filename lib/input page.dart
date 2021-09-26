import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseablecard.dart';
import 'icon.dart';
import 'constant.dart';
import 'resultpage.dart';
import 'lastbut.dart';
import 'ICON_BY_US.dart';
import 'brain.dart';


enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selgender;
  int height = 180;
  int weight = 60;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                          selgender == Gender.Male ? kclickcolour : kcolourback,
                          My_col(FontAwesomeIcons.mars, 'MALE'), () {
                        setState(() {
                          selgender = Gender.Male;
                        });
                      }),
                    ),
                    Expanded(
                      child: ReuseableCard(
                          selgender == Gender.Female
                              ? kclickcolour
                              : kcolourback,
                          My_col(FontAwesomeIcons.venus, 'FEMALE'), () {
                        setState(() {
                          selgender = Gender.Female;
                        });
                      }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  kcolourback,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT', style: kcontTextStyle1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kcontTextStyle2),
                          Text('cm', style: kcontTextStyle1),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            overlayColor: Color(0x50EB1555),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 12.0)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 250.0,
                          onChanged: (double newvalue) {
                            setState(
                              () {
                                height = newvalue.round();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        kcolourback,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kcontTextStyle1,
                            ),
                            SizedBox(height: 10),
                            Text(
                              weight.toString(),
                              style: kcontTextStyle2,
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon_made_by_us(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                                SizedBox(width: 10),
                                Icon_made_by_us(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        kcolourback,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kcontTextStyle1,
                            ),
                            SizedBox(height: 10),
                            Text(
                              age.toString(),
                              style: kcontTextStyle2,
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon_made_by_us(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                                SizedBox(width: 10),
                                Icon_made_by_us(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    age++;
                                  });
                                })
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              lastbutton(onp: () {
                appBrain obj=appBrain(height,weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(obj.value(),obj.finding(),obj.interpolate());
                    },
                  ),
                );
              },tex: 'CALCULATE YOUR BMI',),
            ],
          ),
        ),
      ),
    );
  }
}

