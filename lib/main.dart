import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData.from(
        colorScheme: ColorScheme(brightness: Brightness.dark, primary: Color(0xFF0A0E21), onPrimary: Color(0xFF0A0E21), secondary: Color(0xFF1D1E33), onSecondary: Color(0xFF1D1E33), error: Colors.blue, onError:Colors.blue, background: Color(0xFF0A0E21), onBackground: Color(0xFF0A0E21), surface: Color(0xFF0A0E21), onSurface: Color(0xFF0A0E21))
      ),
      home: InputPage(),
    );
  }
}
