import 'dart:html' as html;

import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Service/campaign_controller.dart';

class CampaignManagerView extends StatelessWidget {
  const CampaignManagerView({super.key});

  TableRow tableHeading() {
    return TableRow(children: [
      Text(
        "Campaign",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          color: CustomColors.darkTextColor,
        ),
      ),
      Text("Trg.ACoS", style: _headingStyle()),
      Text("ACoS", style: _headingStyle()),
      Text("Imp", style: _headingStyle()),
      Text("Clicks", style: _headingStyle()),
      Text("CTR %", style: _headingStyle()),
      Text("Spend", style: _headingStyle()),
      Text("Ave CPC", style: _headingStyle()),
      Text("Orders", style: _headingStyle()),
      Text("Sales", style: _headingStyle()),
      Text("Conv %", style: _headingStyle()),
    ]);
  }

  TextStyle _headingStyle() {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
      color: CustomColors.darkTextColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final CampaignController controller = Get.put(CampaignController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Campaigns Manager",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 19.sp,
                  color: CustomColors.darkTextColor),
            ),
            SizedBox(width: 570.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.selectionColor,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              ),
              onPressed: () {
                final controller = Get.find<CampaignController>();
                final selected = controller.filteredCampaigns;
                if (selected.isEmpty) {
                  Get.snackbar('Error', 'No campaigns to export');
                } else {
                  final csv = StringBuffer();
                  csv.writeln("Name,ACoS,Spend,Sales");
                  for (var c in selected) {
                    csv.writeln(
                        "${c['name']},${c['acts']},${c['spend']},${c['sales']}");
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
                style: GoogleFonts.inter(color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),

        // Functional Filters
        Row(
          children: [
            GestureDetector(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Select Module",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp)),
                          const SizedBox(height: 10),
                          for (var module in [
                            'Bid Optimization',
                            'Search Term Optimization',
                            'Negative Word Finder',
                            'Placement Optimization',
                            'Advanced Optimization'
                          ])
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: InkWell(
                                onTap: () {
                                  controller.setSelectedModule(module);
                                  Navigator.of(ctx).pop();
                                },
                                child: Text(
                                  module,
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColors.darkTextColor,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                  border:
                      Border.all(width: 1.w, color: const Color(0xFF717D96)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
                child: Text(
                  "Choose Module   ^",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: CustomColors.lightTextColor),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            SizedBox(
              width: 180,
              child: TextField(
                onChanged: (value) => controller.updateSearch(value),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        BorderSide(color: const Color(0xFF717D96), width: 1.w),
                  ),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            SizedBox(
              width: 180,
              child: TextField(
                onChanged: (value) => controller.updateProductType(value),
                decoration: InputDecoration(
                  hintText: "Product Type",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        BorderSide(color: const Color(0xFF717D96), width: 1.w),
                  ),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEBEbEB),
                borderRadius: BorderRadius.circular(4.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
              child: Icon(Icons.filter_alt_outlined,
                  color: CustomColors.lightTextColor),
            ),
            SizedBox(width: 4.5.w),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEBEbEB),
                borderRadius: BorderRadius.circular(4.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
              child: Icon(Icons.more_horiz_outlined,
                  color: CustomColors.lightTextColor),
            ),
            SizedBox(width: 55.w),
            Container(
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
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(height: 20.h),

        // Data Table from filteredCampaigns
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
                        Text('${campaign['targetAcos']}%'),
                        Text('${campaign['acos']}%'),
                        Text('${campaign['impressions']}'),
                        Text('${campaign['clicks']}'),
                        Text('${campaign['ctr']}%'),
                        Text('\$${campaign['spend']}'),
                        Text('\$${campaign['cpc']}'),
                        Text('${campaign['orders']}'),
                        Text('\$${campaign['sales']}'),
                        Text('${campaign['conversionRate']}%'),
                      ])
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
