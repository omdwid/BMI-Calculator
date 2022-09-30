import 'package:bmi_cal/calclator_brain.dart';
import 'package:bmi_cal/constants.dart';
import 'package:bmi_cal/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class Result extends StatefulWidget {
  Result({required this.bmi, required this.result, required this.remark});
  String bmi;
  String result;
  String remark;
  @override
  State<Result> createState() =>
      _ResultState(bmi: bmi, result: result, remark: remark);
}

class _ResultState extends State<Result> {
  _ResultState({required this.bmi, required this.result, required this.remark});
  String bmi;
  String result;
  String remark;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Color.fromARGB(255, 236, 235, 235)),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 15.0),
                alignment: Alignment. bottomLeft,
                child: Text(
                  'YOUR RESULT',
                  style: ktitletextstyle,
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: custom_container(
                    colour: activecard_color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          result,
                          style: result_style,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          bmi,
                          style: bmivalue_style,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(remark, textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
                      ],
                    ))),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  height: 50,
                  color: bottomContainerColour,
                  width: double.infinity,
                  child: Text(
                    'RECALCULATE YOUR BMI',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        wordSpacing: 4.0),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
