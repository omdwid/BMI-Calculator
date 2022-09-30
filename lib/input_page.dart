import 'package:bmi_cal/calclator_brain.dart';
import 'package:bmi_cal/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int Height = 180;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: custom_container(
                      colour: selectedGender == Gender.male
                          ? activecard_color
                          : inactive_card_color,
                      function: () {
                        print('male button got pressed');
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: custom_icon(
                        s: 'MALE',
                        i: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: custom_container(
                      function: () {
                        print('female button got pressed');
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activecard_color
                          : inactive_card_color,
                      child: custom_icon(
                        s: 'FEMALE',
                        i: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: custom_container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: labelText,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '$Height',
                          style: largetext,
                        ),
                        Text(
                          'cm',
                          style: labelText,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(),
                      child: Slider(
                        activeColor: bottomContainerColour,
                        inactiveColor: inactive_card_color,
                        max: 220,
                        min: 120.0,
                        value: Height.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            Height = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                colour: activecard_color,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: custom_container(
                      colour: activecard_color,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: labelText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$weight',
                              style: largetext,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  heroTag: "btn3",
                                  backgroundColor:
                                      Color.fromARGB(255, 36, 43, 72),
                                  onPressed: () {
                                    weight = weight - 1;
                                    setState(() {
                                      weight;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: "btn4",
                                  backgroundColor:
                                      Color.fromARGB(255, 36, 43, 72),
                                  onPressed: () {
                                    weight = weight + 1;
                                    setState(() {
                                      weight;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                    child: custom_container(
                      colour: activecard_color,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: labelText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$age',
                              style: largetext,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  heroTag: "btn1",
                                  backgroundColor:
                                      Color.fromARGB(255, 36, 43, 72),
                                  onPressed: () {
                                    age = age - 1;
                                    setState(() {
                                      weight;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: "btn2",
                                  backgroundColor:
                                      Color.fromARGB(255, 36, 43, 72),
                                  onPressed: () {
                                    age = age + 1;
                                    setState(() {
                                      weight;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                bmi_cal b = bmi_cal(Height: Height,Weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => Result(
                      bmi : b.bmi(),
                      result: b.getResult(),
                      remark : b.remark()
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: bottomContainerColour,
                width: double.infinity,
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      wordSpacing: 4.0),
                ),
              ),
            )
          ],
        ));
  }
}
