import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff8c85fe);
const Color darkGray = primaryColor;
const Color gray = Color.fromRGBO(128, 128, 128, 1);

const Color bgColor = Color(0xff211f30);
const Color appBarBgColor = Color(0xff272438);
const Color accentColor = primaryColor;
const Color secondaryColor = primaryColor;
const Color fontColor = Colors.white;

Map<int, Color> primaryVariants = {
  50: const Color(0xffe7e6ff),
  100: const Color(0xffb7b3fe),
  200: const Color(0xff8881fe),
  300: const Color(0xff584efe),
  400: const Color(0xff281bfd),
  500: const Color(0xff0f02e4),
  600: const Color(0xff0c01b1),
  700: const Color(0xff08017e),
  800: const Color(0xff05014c),
  900: const Color(0xff020019)
};

MaterialColor primarySwatch = MaterialColor(0xff8c85fe, primaryVariants);
