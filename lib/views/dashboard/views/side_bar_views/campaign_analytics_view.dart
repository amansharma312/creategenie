import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/campaign_optimizer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CampaignAnalyticsView extends StatelessWidget {
  const CampaignAnalyticsView({super.key});

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
            // PrimaryButton(
            //   title: "Export Report",
            // ),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        Container(
          height: 52.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.r),
              border: Border.all(color: CustomColors.darkTextColor)),
          child: Row(
            children: [
              SizedBox(
                width: 18.w,
              ),
              Text(
                "Select Campaign Name",
                style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.lightTextColor),
              ),
              SizedBox(
                width: 54.w,
              ),
              Container(
                color: CustomColors.darkTextColor,
                width: 1.w,
                height: 52.h,
              ),
              SizedBox(
                width: 32.w,
              ),
              Text(
                "Start Date",
                style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.lightTextColor),
              ),
              SizedBox(
                width: 16.w,
              ),
              Container(
                width: 60.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 49.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 49.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 24.w,
              ),
              Container(
                color: CustomColors.darkTextColor,
                width: 1.w,
                height: 52.h,
              ),
              SizedBox(
                width: 24.w,
              ),
              Text(
                "End Date",
                style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.lightTextColor),
              ),
              SizedBox(
                width: 16.w,
              ),
              Container(
                width: 60.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 49.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 49.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFDEDEDE),
                    borderRadius: BorderRadius.circular(3.r)),
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/png/line_chart.png",
                  width: 235.w,
                  height: 225.h,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.asset(
                  "assets/images/png/bar_chart.png",
                  width: 235.w,
                  height: 225.h,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  children: [
                    const CampaignSummaryCard(
                        title: "Total Spend", subTitle: "14,000 USD"),
                    SizedBox(
                      height: 18.h,
                    ),
                    const CampaignSummaryCard(
                        title: "Total Spend", subTitle: "14,000 USD"),
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/png/scatter_chart.png",
              width: 310.w,
              height: 225.h,
            ),
            SizedBox(
              width: 29.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recommendations",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  height: 39.h,
                  width: 429.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF3D1FF),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: Center(
                      child: Text(
                        "Increase bid for Keyword X by 10% to improve impressions",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color(0xFF555555)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 39.h,
                  width: 429.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF3D1FF),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: Center(
                      child: Text(
                        "Increase bid for Keyword X by 10% to improve impressions",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color(0xFF555555)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Alerts",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  height: 39.h,
                  width: 429.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8FF97),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: Center(
                      child: Text(
                        "Increase bid for Keyword X by 10% to improve impressions",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: const Color(0xFF555555)),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
