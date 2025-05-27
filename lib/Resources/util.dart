import 'package:create_ai_genie_web/main.dart';
import 'package:flutter/material.dart';

extension CustomSize on num {
  SizedBox get sbh => SizedBox(
        height: screenSize.width * 0.01 * toDouble(),
      );
  SizedBox get sbw => SizedBox(width: screenSize.width * 0.01 * toDouble());

  double get tx {
    var ratio = screenSize.height / screenSize.width * 100;
    double fontSize = 14.4;
    if (ratio < 37) {
      if (screenSize.height > 550) {
        fontSize = screenSize.width * 0.01 * toDouble();
      } else if (screenSize.height > 520) {
        fontSize = 13;
      } else if (screenSize.height > 450) {
        fontSize = 12;
      } else if (screenSize.height > 370) {
        fontSize = 11;
      } else if (screenSize.height > 320) {
        fontSize = 10;
      } else if (screenSize.height > 290) {
        fontSize = 9;
      } else {
        fontSize = 8;
      }
    } else {
      fontSize = screenSize.width * 0.01 * toDouble();
    }
    return fontSize;
  }

  double get ht => screenSize.height * 0.01 * toDouble();
  double get wd => screenSize.width * 0.01 * toDouble();
}
