import 'dart:math' as math;

import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/screen_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CampaignOptimizerView extends StatelessWidget {
  const CampaignOptimizerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Campaigns Analytics",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 19.sp,
                  color: CustomColors.darkTextColor),
            ),
            SizedBox(
              width: 570.w,
            ),
            Switch(value: false, onChanged: (value) {})
          ],
        ),
        SizedBox(
          height: 34.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AD Group Name:",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: const Color(0xFF292727))),
                SizedBox(height: 11.h),
                Container(
                  height: 37.h,
                  width: 260.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: const Color(0xFFECECEC)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Custom text field",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF717D96),
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Campaing Name:",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: const Color(0xFF292727))),
                SizedBox(height: 11.h),
                Container(
                  height: 37.h,
                  width: 260.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: const Color(0xFFECECEC)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Custom text field",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF717D96),
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID:",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: const Color(0xFF292727))),
                SizedBox(height: 11.h),
                Container(
                  height: 37.h,
                  width: 260.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: const Color(0xFFECECEC)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Custom text field",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF717D96),
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 22.h,
        ),
        Text("Campaign Summary:",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: const Color(0xFF292727))),
        SizedBox(
          height: 18.h,
        ),
        Row(
          children: [
 
            const CampaignSummaryCard(
              title: 'Total Spend',
              subTitle: '14,000\$',
            ),
            SizedBox(
              width: 12.w,
            ),
            const CampaignSummaryCard(
              title: 'CTR',
              subTitle: 'Value Here',
            ),
            SizedBox(
              width: 12.w,
            ),
            const CampaignSummaryCard(
              title: 'ROI',
              subTitle: 'Value Here',
            ),
            SizedBox(
              width: 12.w,
            ),
            const CampaignSummaryCard(
              title: 'ACoS',
              subTitle: 'Value Here',
            ),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Choose Campaign Goal:",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: const Color(0xFF292727))),
        ),
        SizedBox(
          height: 17.h,
        ),
        Row(
          children: [
            const CampaignCard(
              title: "Boost Sales",
              description:
                  '"Ring the Cash Register" – Think of the joy of hearing the cash register ring when sales roll in!',
            ),
            SizedBox(
              width: 19.w,
            ),
            const CampaignCard(
                title: "Attract Customers",
                description:
                    '"Open the Door" – Picture warmly welcoming new customers through your shop’s open door.'),
            SizedBox(
              width: 19.w,
            ),
            const CampaignCard(
                title: "Enhance Loyalty",
                description:
                    '"Keep Them Coming Back" – Like your favorite café, build a connection that keeps people coming back for more!'),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Budget",
                  style: GoogleFonts.inter(
                      fontSize: 15.sp, color: const Color(0xFF292727)),
                ),
                SizedBox(
                  height: 19.h,
                ),
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SmallBudgetChip(),
                        SizedBox(
                          width: 11.w,
                        ),
                        const SmallBudgetChip(),
                      ],
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
               
                    const BigBudgetChip()
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AI Suggested Budget",
                  style: GoogleFonts.inter(
                      fontSize: 15.sp, color: const Color(0xFF292727)),
                ),
                SizedBox(
                  height: 19.h,
                ),
             
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SmallBudgetChip(),
                        SizedBox(
                          width: 11.w,
                        ),
                        const SmallBudgetChip(),
                      ],
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                   
                    const BigBudgetChip()
                  ],
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}

class BigBudgetChip extends StatelessWidget {
  const BigBudgetChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 419.w,
        height: 38,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 405.w,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 0,
              left: 380,
              child: Container(
                  width: 39,
                  height: 38,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 39,
                        child: Transform.rotate(
                          angle: -180 * (math.pi / 180),
                          child: Container(
                              width: 39,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(0),
                                ),
                                color: const Color.fromRGBO(238, 238, 238, 1),
                                border: Border.all(
                                  color: const Color.fromRGBO(113, 125, 150, 1),
                                  width: 1,
                                ),
                              )),
                        )),
                    Positioned(
                        top: 10,
                        left: 11,
                        child: Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 3.384216070175171,
                                left: 3.365784168243408,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            ]))),
                  ]))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 72,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(0),
                    ),
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          const Positioned(
              top: 12,
              left: 19,
              child: Text(
                'Total',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 12,
              left: 91,
              child: Text(
                '14,000\$',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(113, 125, 150, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}

class SmallBudgetChip extends StatelessWidget {
  const SmallBudgetChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 236,
        height: 38,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 235,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 0,
              left: 197,
              child: Container(
                  width: 39,
                  height: 38,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 39,
                        child: Transform.rotate(
                          angle: -180 * (math.pi / 180),
                          child: Container(
                              width: 39,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(0),
                                ),
                                color: const Color.fromRGBO(238, 238, 238, 1),
                                border: Border.all(
                                  color: const Color.fromRGBO(113, 125, 150, 1),
                                  width: 1,
                                ),
                              )),
                        )),
                    Positioned(
                        top: 10,
                        left: 11,
                        child: Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 3.384216070175171,
                                left: 3.365784168243408,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            ]))),
                  ]))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 72,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(0),
                    ),
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          const Positioned(
              top: 12,
              left: 19,
              child: Text(
                'Daily',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 12,
              left: 91,
              child: Text(
                '200\$',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(113, 125, 150, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}

class CampaignSummaryCard extends StatelessWidget {
  const CampaignSummaryCard({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 172,
        height: 99,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 172,
                  height: 99,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 19,
              left: 52,
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 46,
              left: 46,
              child: Text(
                subTitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}

class CampaignCard extends StatelessWidget {
  const CampaignCard({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 254,
        height: 165,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 254,
                  height: 165,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(154, 25, 207, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 52,
              left: 35.284053802490234,
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color.fromRGBO(41, 39, 39, 1),
                    fontFamily: 'Inter',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 78,
              left: 35,
              child: SizedBox(
                width: 180.w,
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: CustomColors.selectionColor,
                      fontFamily: 'Inter',
                      fontSize: 12,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.4166666666666667),
                ),
              )),
          Positioned(
              top: 21,
              left: 207.99658203125,
              child: Container(
                  width: 18.00341796875,
                  height: 18,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 18.00341796875,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(154, 25, 207, 1),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(18.00341796875, 18)),
                            ))),
                    Positioned(
                        top: 6,
                        left: 4.000901222229004,
                        child: SvgPicture.asset(
                            'assets/images/selected_icon.svg',
                            semanticsLabel: 'selected_icon')),
                  ]))),
          Positioned(
              top: 20,
              left: 35.36250305175781,
              child: Container(
                  width: 21.3786678314209,
                  height: 20,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 21.3786678314209,
                            height: 20,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(3),
                                topRight: Radius.circular(3),
                                bottomLeft: Radius.circular(3),
                                bottomRight: Radius.circular(3),
                              ),
                              color: Color.fromRGBO(113, 125, 150, 1),
                            ))),
                    Positioned(
                        top: 4,
                        left: 4.6374969482421875,
                        child: Container(
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 4.5,
                                left: 4.5,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                              Positioned(
                                  top: 6.375,
                                  left: 7.077749729156494,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                              Positioned(
                                top: 2.250892162322998,
                                left: 4.5,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            ]))),
                  ]))),
        ]));
  }
}
