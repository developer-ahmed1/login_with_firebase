import 'package:flutter/material.dart';

Color hexToColor(String hexColor) {
  hexColor = hexColor.replaceAll('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF$hexColor';
  } else if (hexColor.length != 8) {
    throw ArgumentError('Invalid hex color length');
  }
  return Color(int.parse(hexColor, radix: 16));
}
