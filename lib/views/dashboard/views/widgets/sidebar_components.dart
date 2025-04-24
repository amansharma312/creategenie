import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(width: 1.w, color: CustomColors.lightTextColor)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        child: Row(
          children: [
            Icon(
              Icons.person,
              color: CustomColors.lightTextColor2,
              size: 38.sp,
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Taranpreet - IN",
                  style: GoogleFonts.inter(
                      color: CustomColors.darkTextColor, fontSize: 14.sp),
                ),
                Text(
                  "Store View",
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    color: CustomColors.lightTextColor,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 44.w,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 10.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    super.key,
    required this.imgLoc,
    required this.title,
    required this.isHovered,
    required this.isSelected,
  });
  final bool isHovered;
  final String imgLoc;
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: isSelected
                ? CustomColors.selectionColor
                : CustomColors.whiteColor,
            borderRadius: BorderRadius.circular(5.r),
          ),
          width: 236.w,
          height: 35.h,
          child: Row(
            children: [
              SizedBox(
                width: 17.w,
              ),
              Image.asset(
                imgLoc,
                color: isSelected
                    ? CustomColors.whiteColor
                    : CustomColors.darkTextColor,
                width: 23.w,
                height: 23.w,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  color: isSelected
                      ? CustomColors.whiteColor
                      : CustomColors.darkTextColor,
                ),
              ),
            ],
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isHovered ? 1.0 : 0.0,
          child: Container(
            width: 236.w,
            height: 35.h,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6), // Highlight effect
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
      ],
    );
  }
}
