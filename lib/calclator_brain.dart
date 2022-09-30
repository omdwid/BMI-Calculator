import 'dart:math';

import 'package:bmi_cal/input_page.dart';

class bmi_cal {
  int Height;
  int Weight;
  double bmi_value;

  bmi_cal({this.Height = 0, this.Weight = 0, this.bmi_value = 0});
  String bmi() {
    bmi_value = Weight / pow((Height / 100), 2);
    return bmi_value.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi_value > 25) {
      return 'Overweight';
    } else if (bmi_value > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String remark()
  {
    if (bmi_value > 25) {
      return 'You are overweight. Try to workout more';
    } else if (bmi_value > 18) {
      return 'Your bmi is perfectly normal. Try to maintain it';
    } else {
      return 'You are underweight try to increase your diet';
    }
  }
}
