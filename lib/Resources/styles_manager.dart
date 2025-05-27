import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:create_ai_genie_web/Utility/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight,
    {TextDecoration? decoration}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
      decorationColor: CustomColors.darkTextColor,
    ),
  );
}

TextStyle getLFStyle3({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize, color, FontWeight.w300);
}

TextStyle getSRFStyle4({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize, color, FontWeight.w400);
}

TextStyle getRFStyle5({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize, color, FontWeight.w500);
}

TextStyle getMFStyle6({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize, color, FontWeight.w600);
}

TextStyle getBFStyle7({
  required Color color,
  required double fontSize,
  TextDecoration? decoration,
}) {
  return _getTextStyle(
    fontSize,
    color,
    FontWeight.w700,
    decoration: decoration,
  );
}

TextStyle getLabelStyle() {
  return _getTextStyle(16, CustomColors.darkTextColor, FontWeight.w400);
}

TextStyle getValueStyle(context) {
  return _getTextStyle(
    ResponsiveWidget.isLargeScreen(context) ? 16 : 12,
    CustomColors.darkTextColor,
    FontWeight.w400,
  );
}

OutlineInputBorder grOutlineInputBorder({
  required Color color,
}) =>
    OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color),
    );
