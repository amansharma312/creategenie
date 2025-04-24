import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/controllers/dashboard_controller.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/account_dashboard_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/bulk_listing_optimization_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/campaign_optimizer_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/customer_support_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/sidebar.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  final controller = Get.put(DashboardController());

  List<Widget> screens = [
    const AccountDashboardView(),
    // const CampaignManagerView(),
    //  const CampaignAnalyticsView(),
    const CampaignOptimizerView(),
    const SizedBox(), // KeywordManagerView(),
    const SizedBox(), //CompetitorsAnalyticsView(),
    const BulkListingOptimizerView(),
    const SizedBox(), //TourView(),
    const CustomerSupportView(), //CustomerSupportView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.offWhiteColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Sidebar
          Sidebar(),
          //Child
          Padding(
            padding: EdgeInsets.only(left: 56.w, right: 47.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopBar(),
                  SizedBox(
                    height: 7.h,
                  ),
                  Obx(
                    () => screens[controller.selectedSidebarIndex.value],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*

Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose campaign goal",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF292727),
                                          fontSize: 15.sp),
                                    ),
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    Image.asset(
                                      "assets/images/png/campaign_card.png",
                                      width: 200.w,
                                    ),
                                    SizedBox(
                                      height: 26.h,
                                    ),
                                    AiSuggestionCard(),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    AiSuggestionCard(),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    Text(
                                      "AI Suggested Budget",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp,
                                          color: Color(0xFF292727)),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Row(
                                      children: [
                                        BudgetChip(
                                          keyy: "Daily",
                                          value: "120\$",
                                        ),
                                        SizedBox(
                                          width: 9.w,
                                        ),
                                        BudgetChip(
                                          keyy: "Period",
                                          value: "5 days",
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    BudgetChip(
                                      keyy: "Total",
                                      value: "7000\$",
                                      width: 244.w,
                                    ),
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Text(
                                      "Budget:",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp,
                                          color: Color(0xFF292727)),
                                    ),
                                    SizedBox(
                                      height: 23.h,
                                    ),
                                    Row(
                                      children: [
                                        BudgetChip(
                                          keyy: "Daily",
                                          value: "120\$",
                                        ),
                                        SizedBox(
                                          width: 9.w,
                                        ),
                                        BudgetChip(
                                          keyy: "Period",
                                          value: "5 days",
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    BudgetChip(
                                      keyy: "Total",
                                      value: "7000\$",
                                      width: 244.w,
                                    ),
                                  ],
                                ),

*/
