import 'package:flutter/material.dart';

class GlobalConstants {
  static getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
  static getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static const TextStyle globalHeadersStyle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 4, 11, 119));
}
