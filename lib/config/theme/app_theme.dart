import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.brown,
  Colors.grey,
];

class Apptheme {
  final int selectedColor;

  Apptheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor < colorList.length,
        );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
  );
}
