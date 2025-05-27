import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:create_ai_genie_web/View/Screens/dashboard/side_bar_views/campaign_optimizer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDashboardView extends StatelessWidget {
  const AccountDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Account Dashboard",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 19.sp,
                  color: CustomColors.darkTextColor),
            ),
            SizedBox(
              width: 500.w,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: implement connect account logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.selectionColor,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              ),
              child: Text(
                "Connect New Account",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 23,
        ),
        const AmazonAccountButton(),
        const SizedBox(
          height: 19,
        ),
        Text(
          "Single Account Overview",
          style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CampaignSummaryCard(
              title: 'Total Spend',
              subTitle: '14,000 \$',
            ),
            SizedBox(
              width: 28.w,
            ),
            const CTRCard(
              title: 'CTR',
              value: '15.2 %',
            ),
            SizedBox(
              width: 28.w,
            ),
            const CTRCard(
              title: 'ROI',
              value: '15.2 %',
            ),
            SizedBox(
              width: 28.w,
            ),
            const CTRCard(
              title: 'ACoS',
              value: '15.2 %',
            ),
            SizedBox(
              width: 28.w,
            ),
            const CTRCard(
              title: 'Total Spend',
              value: '15.2 %',
            )
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          "Metric Comparision",
          style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 13,
        ),
        Image.asset(
          "assets/images/png/comparison_graph.png",
          width: 891,
          height: 317,
        ),
      ],
    );
  }
}

class CTRCard extends StatelessWidget {
  const CTRCard({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 172,
        height: 101,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 172,
                  height: 101,
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
              top: 0,
              left: 0,
              child: //Mask holder Template
                  Container(width: 172, height: 101, child: null)),
          Positioned(
              top: 40,
              left: 17,
              child: Container(
                  width: 138,
                  height: 24,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 4,
                        left: 0,
                        child: Container(
                            width: 54,
                            height: 18,
                            child: const Stack(children: <Widget>[
                              //     Positioned(
                              //   top: 0,
                              //   left: 0,
                              //   child: null
                              // ),
                              Positioned(
                                  top: 3,
                                  left: 18,
                                  child: Text(
                                    '11.75%',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(4, 219, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 73,
                        child: Text(
                          value,
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
                  ]))),
          Positioned(
              top: 14,
              left: 68,
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
        ]));
  }
}

class AmazonAccountButton extends StatelessWidget {
  const AmazonAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 429,
        height: 85,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 429,
                  height: 85,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 32,
                        left: 1,
                        child: Container(
                            width: 428,
                            height: 53,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 428,
                                      height: 53,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              174, 174, 174, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                top: 24,
                                left: 399,
                                child: SvgPicture.asset(
                                    'assets/images/down_arrow.svg',
                                    semanticsLabel: 'down_arrow'),
                              ),
                              const Positioned(
                                  top: 17,
                                  left: 57,
                                  child: Text(
                                    'AmazonAccount',
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
                                  top: 16,
                                  left: 20,
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 20,
                                                height: 20,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 20,
                                                          height: 20,
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 20,
                                                                        height: 20,
                                                                        child: Stack(children: <Widget>[
                                                                          // Positioned(
                                                                          //   top: 3.814697322468419e-7,
                                                                          //   left: 3.566572666168213,
                                                                          //   child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
                                                                          // ),
                                                                          Image.asset(
                                                                              "assets/images/png/amazon_logo.png"),
                                                                          Positioned(
                                                                            top:
                                                                                14.115293502807617,
                                                                            left:
                                                                                3.8146924907778157e-7,
                                                                            child:
                                                                                SvgPicture.asset('assets/images/fill237.svg', semanticsLabel: 'fill237'),
                                                                          ),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 19,
                                  left: 368,
                                  child: Container(
                                      width: 13.49731731414795,
                                      height: 13.49731731414795,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(234, 122, 61, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(13.49731731414795,
                                                13.49731731414795)),
                                      ))),
                            ]))),
                    const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Choose Account:',
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
                        top: 0,
                        left: 244,
                        child: Container(
                            width: 182.8461151123047,
                            height: 19.0000057220459,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 1.94915771484375,
                                  left: 144.15380859375,
                                  child: Container(
                                      width: 38.69231033325195,
                                      height: 17.05084800720215,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 38.69231033325195,
                                                height: 17.05084800720215,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(22),
                                                    topRight:
                                                        Radius.circular(22),
                                                    bottomLeft:
                                                        Radius.circular(22),
                                                    bottomRight:
                                                        Radius.circular(22),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      225, 153, 255, 1),
                                                ))),
                                        Positioned(
                                            top: 1.79962158203125,
                                            left: 21.595703125,
                                            child: Container(
                                                width: 13.49731731414795,
                                                height: 13.49731731414795,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      154, 25, 207, 1),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.elliptical(
                                                          13.49731731414795,
                                                          13.49731731414795)),
                                                ))),
                                      ]))),
                              const Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'all-acounts display',
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
                  ]))),
        ]));
  }
}
