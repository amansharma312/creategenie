import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome,",
            style: GoogleFonts.inter(
                fontSize: 22.sp,
                color: CustomColors.lightTextColor,
                fontWeight: FontWeight.w700),
          ),
          Text(
            " Taranpreet",
            style: GoogleFonts.inter(
                fontSize: 22.sp,
                color: CustomColors.darkTextColor,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 424.w,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border:
                    Border.all(color: const Color(0xFFD2D2D2), width: 1.sp)),
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: Row(
                children: [
                  Icon(
                    Icons.monetization_on_rounded,
                    color: CustomColors.darkTextColor,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "25",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        color: CustomColors.darkTextColor),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Icon(
            Icons.notifications,
            color: CustomColors.lightTextColor,
            size: 18.sp,
          ),
          SizedBox(
            width: 9.w,
          ),
          Icon(CupertinoIcons.chevron_down, size: 18.sp),
          SizedBox(
            width: 11.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Taranpreet",
                style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: CustomColors.darkTextColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "taranpreet@st..",
                style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.lightTextColor),
              ),
            ],
          ),
          SizedBox(
            width: 7.w,
          ),
          Icon(
            Icons.person,
            color: CustomColors.lightTextColor,
          ),
        ],
      ),
    );
  }
}
