import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/bulk_listing_optimization_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSupportView extends StatelessWidget {
  const CustomerSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       
            Text(
              "Customer Support",
              style:
                  GoogleFonts.inter(fontSize: 19, fontWeight: FontWeight.w600),
            ),

            const SizedBox(
              height: 18,
            ),
            Text(
              "Issue Category",
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF292727)),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              width: 428,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(174, 174, 174, 1),
                  width: 1,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text(
                    'API Integration',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF292727)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
   
            Container(
              width: 428,
              height: 177,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(174, 174, 174, 1),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 19, top: 17, right: 19),
                child: Text(
                  "Explain more details about the issue you are facing..",
                  style: GoogleFonts.inter(
                      fontSize: 15, color: CustomColors.lightTextColor),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Upload Category Listing report",
              style:
                  GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 14.h,
            ),

            const UploadContainer(),
            const SizedBox(
              height: 10,
            ),
            Text("Accepted Formats",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: const Color(0xFF939393))),
            SizedBox(height: 5.h),
            Text("Maximum Size: 100MB",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: const Color(0xFF939393))),
            SizedBox(height: 11.h),
            Image.asset(
              "assets/images/png/report_image.png",
              // width: 440.w,
              height: 55,
            ),
          ],
        ),
        const SizedBox(width: 31),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Tickets History",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(width: 120),
                Container(
                    width: 78,
                    height: 25,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 78,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3),
                                  topRight: Radius.circular(3),
                                  bottomLeft: Radius.circular(3),
                                  bottomRight: Radius.circular(3),
                                ),
                                color: Color.fromRGBO(235, 235, 235, 1),
                              ))),
                      const Positioned(
                          top: 5,
                          left: 9,
                          child: Text(
                            'Priority',
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
                      Positioned(
                          top: 12,
                          left: 61,
                          child: Container(
                              width: 8,
                              height: 3,
                              decoration: const BoxDecoration(),
                              child: Stack(children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/down_arrow.svg',
                                      semanticsLabel: 'down_arrow'),
                                ),
                              ]))),
                    ])),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TicketHistoryCard(),
            const SizedBox(
              height: 15,
            ),
            const TicketHistoryCard(),
            const SizedBox(
              height: 61,
            ),
            Text(
              "Relevant Articles",
              style:
                  GoogleFonts.inter(fontSize: 19, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
     
            const RelevantArticleCard(),
            const SizedBox(
              height: 15,
            ),
            const RelevantArticleCard()
          ],
        ),
      ],
    );
  }
}

class RelevantArticleCard extends StatelessWidget {
  const RelevantArticleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 432,
        height: 125,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 432,
                  height: 125,
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
          const Positioned(
              top: 93,
              left: 19,
              child: Text(
                'Ensure your API key is correct and has the necessary permissions. Invalid..',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(113, 125, 150, 1),
                    fontFamily: 'Inter',
                    fontSize: 11,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 60,
              left: 18,
              child: Container(
                  width: 194,
                  height: 22,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 106,
                            height: 22,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                              color: Color.fromRGBO(235, 235, 235, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 113,
                        child: Container(
                            width: 81,
                            height: 22,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                              color: Color.fromRGBO(235, 235, 235, 1),
                            ))),
                    const Positioned(
                        top: 4,
                        left: 13,
                        child: Text(
                          'API  Integration',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(113, 125, 150, 1),
                              fontFamily: 'Inter',
                              fontSize: 11,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 4,
                        left: 127,
                        child: Text(
                          'Data Sync',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(113, 125, 150, 1),
                              fontFamily: 'Inter',
                              fontSize: 11,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          const Positioned(
              top: 15,
              left: 18,
              child: Text(
                'API Integration Error Preventing Campaign Data Sync',
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
        ]));
  }
}

class TicketHistoryCard extends StatelessWidget {
  const TicketHistoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 432,
        height: 81,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 432,
                  height: 81,
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
          const Positioned(
              top: 18,
              left: 42,
              child: Text(
                'API  Integration',
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
              top: 45,
              left: 19,
              child: Text(
                'The error occurs during the data sync process, where..',
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
              top: 15,
              left: 341,
              child: Container(
                  width: 72,
                  height: 22,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 72,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(19),
                                topRight: Radius.circular(19),
                                bottomLeft: Radius.circular(19),
                                bottomRight: Radius.circular(19),
                              ),
                              border: Border.all(
                                color: const Color.fromRGBO(4, 219, 0, 1),
                                width: 1,
                              ),
                            ))),
                    const Positioned(
                        top: 5,
                        left: 17,
                        child: Text(
                          'Resolved',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(4, 219, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 9,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 17,
              left: 19,
              child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: const Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Icon(
                        Icons.check,
                        size: 14,
                      ),
                    ),
                  ]))),
        ]));
  }
}
