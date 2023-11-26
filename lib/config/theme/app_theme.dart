import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.teal,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'selected color must be greater or equal to 0'),
      assert(selectedColor < colorList.length, 'selected color less than list of colors');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor]
        
      );
}
