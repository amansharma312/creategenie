import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/controllers/dashboard_controller.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/sidebar_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Sidebar extends StatelessWidget {
  Sidebar({
    super.key,
  });
  final controller = Get.put(DashboardController());
  RxInt hoverIndex = 99.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: CustomColors.whiteColor, boxShadow: [
        BoxShadow(
          offset: const Offset(0, 4),
          blurRadius: 18.1.r,
          spreadRadius: 9.r,
          color: const Color(0xFF000000).withOpacity(0.4),
        ),
      ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 34.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AD Campaign",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700, fontSize: 24.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              const ProfileCard(),
              SizedBox(
                height: 16.h,
              ),
              for (int i = 0; i < 10; i++) ...[
                Padding(
                  padding: EdgeInsets.only(bottom: 9.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      i == 1
                          ? Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Text(
                                "Campaing",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13.sp,
                                    color: CustomColors.lightTextColor2),
                              ),
                            )
                          : i == 4
                              ? Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    "Analytics",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.sp,
                                        color: CustomColors.lightTextColor2),
                                  ),
                                )
                              : i == 7
                                  ? Padding(
                                      padding: EdgeInsets.only(left: 16.w),
                                      child: Text(
                                        "Help",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13.sp,
                                            color:
                                                CustomColors.lightTextColor2),
                                      ),
                                    )
                                  : const SizedBox(),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onHover: (event) {
                          hoverIndex.value = i;
                        },
                        onExit: (event) {
                          hoverIndex.value = 99;
                        },
                        child: Obx(
                          () => ZoomTapAnimation(
                            onTap: () {
                              i == 4 || i == 5 || i == 7 || i == 9
                                  ? null
                                  : controller.selectedSidebarIndex.value = i;
                            },
                            child: Opacity(
                              opacity: i == 4 || i == 5 || i == 7 ? 0.4 : 1,
                              child: SidebarButton(
                                isHovered: hoverIndex.value == i,
                                imgLoc: 'assets/images/png/sidebar_$i.png',
                                title: controller.sidebarItems[i],
                                isSelected:
                                    controller.selectedSidebarIndex.value == i,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            
              const CompleteSetupButton()
            ],
          ),
        ),
      ),
    );
  }
}

class CompleteSetupButton extends StatelessWidget {
  const CompleteSetupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 246,
        height: 81,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 246,
                  height: 81,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ))),
          Positioned(
              top: 11,
              left: 71,
              child: Container(
                  width: 165,
                  height: 58,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 38,
                        left: 92,
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                // color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 3.4210524559020996,
                                  left: 9.536743306171047e-8,
                                  child: Container(
                                      width: 20,
                                      height: 13.157893180847168,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 20,
                                                height: 13.157893180847168,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 20,
                                                          height:
                                                              13.157893180847168,
                                                          child: const Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Icon(
                                                                      CupertinoIcons
                                                                          .right_chevron,
                                                                      size: 14,
                                                                    )),
                                                              ]))),
                                                ]))),
                                      ]))),
                            ]))),
                    const Positioned(
                        top: 40,
                        left: 0,
                        child: Text(
                          'Complete Setup',
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
                        top: 0,
                        left: 0,
                        child: Text(
                          'Finish Your Account Setup Guide',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(67, 88, 132, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 14,
              left: 15,
              child: Container(
                  width: 42,
                  height: 42,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(113, 125, 150, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(42, 42)),
                            ))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: //Mask holder Template
                            Container(
                          width: 42,
                          height: 42,
                          child: ClipOval(
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: -3,
                                left: 21,
                                child: SvgPicture.asset(
                                    'assets/images/vector1.svg',
                                    semanticsLabel: 'vector1'),
                              ),
                            ]),
                          ),
                        )),
                    Positioned(
                        top: 4,
                        left: 4,
                        child: Container(
                            width: 34,
                            height: 34,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(34, 34)),
                            ))),
                    const Positioned(
                        top: 15,
                        left: 10,
                        child: Text(
                          '45%',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(68, 89, 133, 1),
                              fontFamily: 'Inter',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
