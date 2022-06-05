import 'package:flutter/material.dart';

class Breakpoint {
  static double getWidthOfPage(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeightOfPage(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
