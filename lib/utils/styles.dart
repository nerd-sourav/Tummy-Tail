import 'package:flutter/material.dart';

const Color primary = Color.fromARGB(255, 254, 185, 10);
const Color secondary = Colors.black;

class Styles {
  static Color primaryColor = primary;
  static Color kakiColor = const Color(0xFFd2bdd6);
  static Color textColor = const Color.fromARGB(255, 0, 0, 0);
  static Color bgColor = Color.fromARGB(255, 220, 220, 220);
  static Color orangeColor = const Color(0xFFF37B67);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: primaryColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 40,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 30,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 22,
    color: secondary,
    // fontWeight: FontWeight.re,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 18,
    color: secondary,
    fontWeight: FontWeight.bold,
  );
}
