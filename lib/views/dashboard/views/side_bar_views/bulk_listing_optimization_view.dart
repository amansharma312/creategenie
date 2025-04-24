import 'dart:math' as math;

import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/screen_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BulkListingOptimizerView extends StatelessWidget {
  const BulkListingOptimizerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bulk Listing Optimization",
          style: GoogleFonts.inter(fontSize: 19, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 29.h,
        ),
        Text(
          "Upload Category Listing report",
          style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UploadContainer(),
                SizedBox(
                  height: 10,
                ),
                Text("Accepted Formats",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Color(0xFF939393))),
                SizedBox(height: 5.h),
                Text("Maximum Size: 100MB",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Color(0xFF939393))),
                SizedBox(height: 11.h),
                Image.asset(
                  "assets/images/png/report_image.png",
                  // width: 440.w,
                  height: 55,
                ),
              ],
            ),
      
            SizedBox(
              width: 36,
            ),
            SizedBox(
                width: 433,
                height: 234,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 85,
                      left: 0,
                      child: SizedBox(
                          width: 433,
                          height: 66,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 29,
                                left: 0,
                                child: SizedBox(
                                    width: 433,
                                    height: 37,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 433,
                                              height: 37,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7),
                                                  bottomLeft:
                                                      Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7),
                                                ),
                                                color: Color.fromRGBO(
                                                    235, 235, 235, 1),
                                              ))),
                                      Positioned(
                                          top: 10,
                                          left: 46,
                                          child: Text(
                                            'Cooking Plates',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 17,
                                          left: 404,
                                          child: Container(
                                              width: 10,
                                              height: 4,
                                              decoration: BoxDecoration(),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: SvgPicture.asset(
                                                      'assets/images/down_arrow.svg',
                                                      semanticsLabel:
                                                          'down_arrow'),
                                                ),
                                              ]))),
                                      Positioned(
                                          top: 8,
                                          left: 17,
                                          child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 0.8333336710929871,
                                                  left: 1.781359314918518,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ]))),
                                    ]))),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'Products Sub Category:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(41, 39, 39, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ]))),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                          width: 433,
                          height: 66,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 29,
                                left: 0,
                                child: SizedBox(
                                    width: 433,
                                    height: 37,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 433,
                                              height: 37,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7),
                                                  bottomLeft:
                                                      Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7),
                                                ),
                                                color: Color.fromRGBO(
                                                    235, 235, 235, 1),
                                              ))),
                                      Positioned(
                                          top: 10,
                                          left: 42,
                                          child: Text(
                                            'Kitchen Gadgets - Trending Now',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 18,
                                          left: 404,
                                          child: Container(
                                              width: 10,
                                              height: 4,
                                              decoration: BoxDecoration(),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: SvgPicture.asset(
                                                      'assets/images/down_arrow.svg',
                                                      semanticsLabel:
                                                          'down_arrow'),
                                                ),
                                              ]))),
                                      Positioned(
                                          top: 9,
                                          left: 15,
                                          child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                    top: 1.3416666984558105,
                                                    left: 2.5,
                                                    child: SizedBox(
                                                        width: 15,
                                                        height:
                                                            17.320507049560547,
                                                        child: Stack(
                                                            children: <Widget>[
                                                              Positioned(
                                                                  top: 0,
                                                                  left: 0,
                                                                  child: SizedBox(
                                                                      width: 15,
                                                                      height: 17.320507049560547,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              0,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/combinedshape.svg',
                                                                              semanticsLabel: 'combinedshape'),
                                                                        ),
                                                                      ]))),
                                                            ]))),
                                              ]))),
                                    ]))),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'Products Category:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(41, 39, 39, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ]))),
                  Positioned(
                      top: 170,
                      left: 0,
                      child: SizedBox(
                          width: 433,
                          height: 64,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'ID:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(41, 39, 39, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 27,
                                left: 0,
                                child: SizedBox(
                                    width: 433,
                                    height: 37,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 433,
                                              height: 37,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7),
                                                  bottomLeft:
                                                      Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7),
                                                ),
                                                color: Color.fromRGBO(
                                                    235, 235, 235, 1),
                                              ))),
                                      Positioned(
                                          top: 10,
                                          left: 50,
                                          child: Text(
                                            '2A898GH902',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 9,
                                          left: 19,
                                          child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: SizedBox(
                                                        width: 20,
                                                        height: 17.5,
                                                        child: Stack(
                                                            children: <Widget>[
                                                              Positioned(
                                                                  top:
                                                                      2.500000476837158,
                                                                  left:
                                                                      3.814697322468419e-7,
                                                                  child: SizedBox(
                                                                      width: 20,
                                                                      height: 15,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: SizedBox(
                                                                                width: 20,
                                                                                height: 15,
                                                                                child: Stack(children: <Widget>[
                                                                                  Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                  ),
                                                                                ]))),
                                                                      ]))),
                                                              Positioned(
                                                                  top:
                                                                      3.814697322468419e-7,
                                                                  left: 7.5,
                                                                  child:
                                                                      SizedBox(
                                                                          width:
                                                                              5,
                                                                          height:
                                                                              5.8333330154418945,
                                                                          child:
                                                                              Stack(children: <Widget>[
                                                                            Positioned(
                                                                                top: 0,
                                                                                left: 0,
                                                                                child: SizedBox(
                                                                                    width: 5,
                                                                                    height: 5.8333330154418945,
                                                                                    child: Stack(children: <Widget>[
                                                                                      Positioned(
                                                                                        top: 0,
                                                                                        left: 0,
                                                                                        child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                      ),
                                                                                    ]))),
                                                                          ]))),
                                                              Positioned(
                                                                  top:
                                                                      6.6666669845581055,
                                                                  left:
                                                                      3.3333334922790527,
                                                                  child: SizedBox(
                                                                      width: 4.166666507720947,
                                                                      height: 6.666666507720947,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: SizedBox(
                                                                                width: 4.166666507720947,
                                                                                height: 6.666666507720947,
                                                                                child: Stack(children: <Widget>[
                                                                                  Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                  ),
                                                                                ]))),
                                                                      ]))),
                                                              Positioned(
                                                                  top:
                                                                      6.6666669845581055,
                                                                  left:
                                                                      9.166666030883789,
                                                                  child: SizedBox(
                                                                      width: 6.666666507720947,
                                                                      height: 1.6666666269302368,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: SizedBox(
                                                                                width: 6.666666507720947,
                                                                                height: 1.6666666269302368,
                                                                                child: Stack(children: <Widget>[
                                                                                  Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                  ),
                                                                                ]))),
                                                                      ]))),
                                                              Positioned(
                                                                  top:
                                                                      9.166666030883789,
                                                                  left:
                                                                      9.166666030883789,
                                                                  child: SizedBox(
                                                                      width: 4.166666507720947,
                                                                      height: 1.6666666269302368,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: SizedBox(
                                                                                width: 4.166666507720947,
                                                                                height: 1.6666666269302368,
                                                                                child: Stack(children: <Widget>[
                                                                                  Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                  ),
                                                                                ]))),
                                                                      ]))),
                                                              Positioned(
                                                                  top:
                                                                      11.666666030883789,
                                                                  left:
                                                                      9.166666030883789,
                                                                  child: SizedBox(
                                                                      width: 5.8333330154418945,
                                                                      height: 1.6666666269302368,
                                                                      child: Stack(children: <Widget>[
                                                                        Positioned(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            child: SizedBox(
                                                                                width: 5.8333330154418945,
                                                                                height: 1.6666666269302368,
                                                                                child: Stack(children: <Widget>[
                                                                                  Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                                  ),
                                                                                ]))),
                                                                      ]))),
                                                            ]))),
                                              ]))),
                                    ]))),
                          ]))),
                ]))
          ],
        ),
        SizedBox(
          height: 42.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Keywords List:",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    SizedBox(
                        width: 142,
                        height: 27,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 142,
                                  height: 27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    color: Color.fromRGBO(154, 25, 207, 1),
                                    border: Border.all(
                                      color: Color.fromRGBO(154, 25, 207, 1),
                                      width: 1,
                                    ),
                                  ))),
                          Positioned(
                              top: 7,
                              left: 18,
                              child: Text(
                                'Add New Keyword',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ]))
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Choose the match type, then edit or delete any keyword inline.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(146, 146, 146, 1),
                      fontFamily: 'Inter',
                      fontSize: 11,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
                SizedBox(
                  height: 10,
                ),
          
                KeywordSelectionBox(),
                SizedBox(
                  height: 10,
                ),
                KeywordSelectionBox(),
                SizedBox(
                  height: 10,
                ),
                KeywordSelectionBox()
              ],
            ),
            SizedBox(
              width: 39.w,
            ),

            SizedBox(
                width: 435,
                height: 178,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 150,
                      left: 0,
                      child: SizedBox(
                          width: 435,
                          height: 28,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: SizedBox(
                                    width: 181,
                                    height: 27,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 181,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft:
                                                      Radius.circular(4),
                                                  bottomRight:
                                                      Radius.circular(4),
                                                ),
                                                color: Color.fromRGBO(
                                                    154, 25, 207, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 68,
                                          child: Text(
                                            'Accept',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]))),
                            Positioned(
                                top: 1,
                                left: 265,
                                child: SizedBox(
                                    width: 170,
                                    height: 27,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 170,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft:
                                                      Radius.circular(4),
                                                  bottomRight:
                                                      Radius.circular(4),
                                                ),
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 58,
                                          child: Text(
                                            'Reset All',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]))),
                          ]))),
                  Positioned(
                      top: 102,
                      left: 0,
                      child: SizedBox(
                          width: 420,
                          height: 38,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 420,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(113, 125, 150, 1),
                                        width: 1,
                                      ),
                                    ))),
                            Positioned(
                                top: 9,
                                left: 388,
                                child: SizedBox(
                                    width: 17.6884765625,
                                    height: 18.122573852539062,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 17.6884765625,
                                              height: 18.122573852539062,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      113, 125, 150, 1),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        17.6884765625,
                                                        18.122573852539062)),
                                              ))),
                                      Positioned(
                                        top: 6.0408196449279785,
                                        left: 3.9306864738464355,
                                        child: SvgPicture.asset(
                                            'assets/images/selected_icon.svg',
                                            semanticsLabel: 'selected_icon'),
                                      ),
                                    ]))),
                            Positioned(
                                top: 12,
                                left: 17,
                                child: Text(
                                  '“Robot vacuum cleaner”',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 8,
                                left: 240,
                                child: SizedBox(
                                    width: 131,
                                    height: 22,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 131,
                                              height: 22,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(19),
                                                  topRight: Radius.circular(19),
                                                  bottomLeft:
                                                      Radius.circular(19),
                                                  bottomRight:
                                                      Radius.circular(19),
                                                ),
                                                color: Color.fromRGBO(
                                                    255, 210, 210, 1),
                                              ))),
                                      Positioned(
                                          top: 5,
                                          left: 12,
                                          child: Text(
                                            'Low Impact',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 9,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 2,
                                          left: 67,
                                          child: SizedBox(
                                              width: 53.999900817871094,
                                              height: 18.000001907348633,
                                              child: Stack(children: <Widget>[
                                                // Positioned(
                                                //     top: 18.000001907348633,
                                                //     left: 18,
                                                //     child: null),
                                                Positioned(
                                                    top: 2.999997854232788,
                                                    left: 17.99989891052246,
                                                    child: Text(
                                                      '20.32%',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              234, 61, 61, 1),
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          letterSpacing: 0.5,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    )),
                                              ]))),
                                    ]))),
                          ]))),
                  Positioned(
                      top: 55,
                      left: 0,
                      child: SizedBox(
                          width: 420,
                          height: 38,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 420,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(154, 25, 207, 1),
                                        width: 1,
                                      ),
                                    ))),
                            Positioned(
                                top: 12,
                                left: 17,
                                child: Text(
                                  '“Winter coats”',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 10,
                                left: 388,
                                child: SizedBox(
                                    width: 17.6884765625,
                                    height: 18.122573852539062,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 17.6884765625,
                                              height: 18.122573852539062,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    154, 25, 207, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        17.6884765625,
                                                        18.122573852539062)),
                                              ))),
                                      Positioned(
                                        top: 6.0408196449279785,
                                        left: 3.9306864738464355,
                                        child: SvgPicture.asset(
                                            'assets/images/selected_icon.svg',
                                            semanticsLabel: 'selected_icon'),
                                      ),
                                    ]))),
                            Positioned(
                                top: 9,
                                left: 240,
                                child: SizedBox(
                                    width: 131,
                                    height: 22,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 131,
                                              height: 22,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(19),
                                                  topRight: Radius.circular(19),
                                                  bottomLeft:
                                                      Radius.circular(19),
                                                  bottomRight:
                                                      Radius.circular(19),
                                                ),
                                                color: Color.fromRGBO(
                                                    211, 255, 210, 1),
                                              ))),
                                      Positioned(
                                          top: 5,
                                          left: 12,
                                          child: Text(
                                            'High Impact',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    113, 125, 150, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 9,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 2,
                                          left: 67,
                                          child: SizedBox(
                                              width: 54,
                                              height: 18,
                                              child: Stack(children: <Widget>[
                                                // Positioned(
                                                //     top: 0,
                                                //     left: 0,
                                                //     child: null),
                                                Positioned(
                                                    top: 3,
                                                    left: 18,
                                                    child: Text(
                                                      '70.25%',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              4, 219, 0, 1),
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          letterSpacing: 0.5,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    )),
                                              ]))),
                                    ]))),
                          ]))),
                  Positioned(
                      top: 49,
                      left: 428,
                      child: SizedBox(
                          width: 7,
                          height: 96,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 7,
                                    height: 96,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                    ))),
                            Positioned(
                                top: 2,
                                left: 2,
                                child: Container(
                                    width: 3,
                                    height: 37,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      color: Color.fromRGBO(113, 125, 150, 1),
                                    ))),
                          ]))),
                  Positioned(
                      top: 32,
                      left: 0,
                      child: Text(
                        'Check Preferred Keywords, and Press ‘Accept All’ to add them.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(146, 146, 146, 1),
                            fontFamily: 'Inter',
                            fontSize: 11,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                          width: 233.5426025390625,
                          height: 20,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 194,
                                child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 0.0018717104103416204,
                                        left: 1.2490161657333374,
                                        child: SvgPicture.asset(
                                            'assets/images/vector.svg',
                                            semanticsLabel: 'vector'),
                                      ),
                                    ]))),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'AI Suggested Keywrods',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(41, 39, 39, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 15,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ]))),
                ]))
          ],
        )
      ],
    );
  }
}

class KeywordSelectionBox extends StatelessWidget {
  const KeywordSelectionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 420,
        height: 38,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 420,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 13,
              left: 391,
              child: Container(
                  width: 13,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 2.6321680545806885,
                      left: 2.4308440685272217,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 12,
              left: 17,
              child: Text(
                'Winter co',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 11,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 13,
              left: 68,
              child: Transform.rotate(
                angle: -90.00000250447827 * (math.pi / 180),
                child: Divider(
                    color: Color.fromRGBO(113, 125, 150, 1), thickness: 1),
              )),
          Positioned(
              top: 8,
              left: 240,
              child: SizedBox(
                  width: 92,
                  height: 22,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 92,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(19),
                                topRight: Radius.circular(19),
                                bottomLeft: Radius.circular(19),
                                bottomRight: Radius.circular(19),
                              ),
                              color: Color.fromRGBO(235, 235, 235, 1),
                            ))),
                    Positioned(
                        top: 5,
                        left: 12,
                        child: Text(
                          'Phrase Match',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(113, 125, 150, 1),
                              fontFamily: 'Inter',
                              fontSize: 9,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 10,
                        left: 74,
                        child: Container(
                            width: 6,
                            height: 3,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: SvgPicture.asset(
                                    'assets/images/down_arrow.svg',
                                    semanticsLabel: 'down_arrow'),
                              ),
                            ]))),
                  ]))),
        ]));
  }
}

class UploadContainer extends StatelessWidget {
  const UploadContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 117,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: CustomColors.lightTextColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 23,
          ),
          Image.asset(
            "assets/images/png/export_icon.png",
            height: 36.w,
            width: 36.w,
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "Drag and Drop Document here or Choose Document",
            style: GoogleFonts.inter(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
