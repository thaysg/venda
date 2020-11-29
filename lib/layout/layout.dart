import 'package:flutter/material.dart';

class Layout {
  static Color primaryColor([double opacity = 1]) =>
      Colors.blue[700].withOpacity(opacity);

  static Color primaryDark([double opacity = 1]) =>
      Color(0xff266BDB).withOpacity(opacity);

  static Color primaryLight([double opacity = 1]) =>
      Color(0xff12B6FC).withOpacity(opacity);

  static Color colorWhite = Colors.white;

  static Color cancelButtom = Color(0xffff0000);

  static Color okButtom = Color(0xff009933);
}
