import 'package:flutter/material.dart';

class ColorUtils {
  Color primarycolor     = HexColor("6a2c58");
  Color blackcolor       = HexColor("200917");
  Color graycolor        = HexColor("a6a6a6");
  Color orangeColor      = HexColor("ffb53f");
  Color redColor         = HexColor("fe5d18");
  Color violetColor      = HexColor("7775f8");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}