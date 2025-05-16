import 'package:create_ai_genie_web/constants/colors.dart';
import 'package:create_ai_genie_web/views/dashboard/controllers/dashboard_controller.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/account_dashboard_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/bulk_listing_optimization_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/campaign_analytics_view.dart'
    as analytics;
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/campaign_optimizer_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/campaing_manager_view.dart'
    as manager_view;
import 'package:create_ai_genie_web/views/dashboard/views/side_bar_views/customer_support_view.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/sidebar.dart';
import 'package:create_ai_genie_web/views/dashboard/views/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final controller = Get.put(DashboardController());

  final List<Widget> screens = [
    const AccountDashboardView(),
    const manager_view.CampaignManagerView(),
    const analytics.CampaignAnalyticsView(),
    const CampaignOptimizerView(),
    const SizedBox(), // Placeholder for Keyword Manager
    const SizedBox(), // Placeholder for Competitor Analytics
    const BulkListingOptimizerView(),
    const SizedBox(), // Placeholder for Tour view
    const CustomerSupportView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.offWhiteColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sidebar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 56.w, right: 47.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TopBar(),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        //  StrategyDropdown(),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    SizedBox(height: 7.h),
                    Obx(() => screens[controller.selectedSidebarIndex.value]),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
