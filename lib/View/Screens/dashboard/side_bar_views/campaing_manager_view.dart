import 'dart:html' as html;

import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:create_ai_genie_web/View/Screens/dashboard/widgets/RuleEngineDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../campaign/widgets/strategy_builder_dialog.dart';
import '../../../../Service/campaign_controller.dart';

class CampaignManagerView extends StatelessWidget {
  const CampaignManagerView({super.key});

  TableRow tableHeading() {
    return TableRow(children: [
      _tableHeadingText("Campaign"),
      _tableHeadingText("Trg.ACoS"),
      _tableHeadingText("ACoS"),
      _tableHeadingText("Imp"),
      _tableHeadingText("Clicks"),
      _tableHeadingText("CTR %"),
      _tableHeadingText("Spend"),
      _tableHeadingText("Ave CPC"),
      _tableHeadingText("Orders"),
      _tableHeadingText("Sales"),
      _tableHeadingText("Conv %"),
    ]);
  }

  Widget _tableHeadingText(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          color: CustomColors.darkTextColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final CampaignController controller = Get.put(CampaignController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top Row with Title and Export Report
        Row(
          children: [
            Text(
              "Campaigns Manager",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 19.sp,
                color: CustomColors.darkTextColor,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.selectionColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                elevation: 0,
              ),
              onPressed: () {
                final selected = controller.filteredCampaigns;
                if (selected.isEmpty) {
                  Get.snackbar('Error', 'No campaigns to export');
                } else {
                  final csv = StringBuffer();
                  csv.writeln("Name,ACoS,Imp,Clicks,CTR,Spend,Sales");
                  for (var c in selected) {
                    csv.writeln(
                        "${c['name']},${c['acos']},${c['impressions']},${c['clicks']},${c['ctr']},${c['spend']},${c['sales']}");
                  }
                  final blob = html.Blob([csv.toString()], 'text/csv');
                  final url = html.Url.createObjectUrlFromBlob(blob);
                  final anchor = html.AnchorElement(href: url)
                    ..setAttribute("download", "campaigns_export.csv")
                    ..click();
                  html.Url.revokeObjectUrl(url);
                }
              },
              child: Text(
                "Export Report",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),

        // Filters Row
        Row(
          children: [
            // Choose Module
            _chooseModule(context, controller),
            SizedBox(width: 12.w),

            // Search Field
            _searchField(controller),
            SizedBox(width: 12.w),

            // Product Type Field
            _productTypeField(controller),
            SizedBox(width: 12.w),

            // Create Strategy Button (styled like product type)
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const StrategyBuilderDialog(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF717D96)),
                  borderRadius: BorderRadius.circular(4.r),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
                child: Text(
                  "Strategy ^| Create",
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.purple, // Purple color for the text
                  ),
                ),
              ),
            ),

            const Spacer(),
            // Replaced SizedBox with Spacer for proper alignment

            // Filter Icon (Opens Rule Engine Dialog)
            _iconButton(
              icon: Icons.filter_alt_outlined,
              onTap: () async {
                final filterCriteria = await showDialog<Map<String, dynamic>>(
                  context: context,
                  builder: (context) => RuleEngineDialog(),
                );
                if (filterCriteria != null) {
                  controller.applyFilters(filterCriteria);
                }
              },
            ),
            SizedBox(width: 4.5.w),

            // More Icon
            _iconButton(icon: Icons.more_horiz_outlined),
            SizedBox(width: 16.w),

            // Reset Button
            _resetButton(controller),
          ],
        ),
        SizedBox(height: 10.h),

        // Campaigns Table
        Obx(() => Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 800.w,
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {0: const FlexColumnWidth(2)},
                  children: [
                    tableHeading(),
                    for (var campaign in controller.filteredCampaigns)
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Text(campaign['name'] ?? '--'),
                        ),
                        _tableData(campaign['targetAcos']),
                        _tableData(campaign['acos']),
                        _tableData(campaign['impressions']),
                        _tableData(campaign['clicks']),
                        _tableData(campaign['ctr']),
                        _tableData(campaign['spend'], isCurrency: true),
                        _tableData(campaign['cpc'], isCurrency: true),
                        _tableData(campaign['orders']),
                        _tableData(campaign['sales'], isCurrency: true),
                        _tableData(campaign['conversionRate']),
                      ])
                  ],
                ),
              ),
            )),
      ],
    );
  }

  Widget _chooseModule(BuildContext context, CampaignController controller) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Select Module",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: CustomColors.darkTextColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  for (var module in [
                    'Bid Optimization',
                    'Search Term Optimization',
                    'Negative Word Finder',
                    'Placement Optimization',
                    'Advanced Optimization'
                  ])
                    ListTile(
                      title: Text(module),
                      onTap: () {
                        controller.setSelectedModule(module);
                        Navigator.of(ctx).pop();
                      },
                    ),
                ],
              ),
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF717D96)),
          borderRadius: BorderRadius.circular(4.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
        child: Text(
          "Choose Module   ^",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: CustomColors.lightTextColor,
          ),
        ),
      ),
    );
  }

  Widget _searchField(CampaignController controller) {
    return SizedBox(
      width: 180,
      child: TextField(
        onChanged: (value) => controller.updateSearch(value),
        decoration: _inputDecoration("Search"),
      ),
    );
  }

  Widget _productTypeField(CampaignController controller) {
    return SizedBox(
      width: 180,
      child: TextField(
        onChanged: (value) => controller.updateProductType(value),
        decoration: _inputDecoration("Product Type"),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.r),
        borderSide: const BorderSide(color: Color(0xFF717D96)),
      ),
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
    );
  }

  Widget _iconButton({required IconData icon, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEBEBEB),
          borderRadius: BorderRadius.circular(4.r),
        ),
        padding: EdgeInsets.all(10.h),
        child: Icon(icon, color: CustomColors.lightTextColor),
      ),
    );
  }

  Widget _resetButton(CampaignController controller) {
    return GestureDetector(
      onTap: () {
        controller.resetFilters();
      },
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.lightTextColor,
          borderRadius: BorderRadius.circular(4.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
        child: Text(
          "Reset",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _tableData(dynamic value, {bool isCurrency = false}) {
    String text = value != null ? (isCurrency ? "\$$value" : "$value%") : "--";
    return Center(child: Text(text, style: GoogleFonts.inter(fontSize: 12.sp)));
  }
}
