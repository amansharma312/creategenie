import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Service/campaign_controller.dart';
import 'campaign_table_row.dart';

class CampaignTable extends StatelessWidget {
  CampaignTable({super.key});

  final CampaignController controller = Get.find<CampaignController>();

  final List<String> headers = [
    "Campaign",
    "Trg.ACoS",
    "ACoS",
    "Imp",
    "Clicks",
    "CTR %",
    "Spend",
    "Ave CPC",
    "Orders",
    "Sales",
    "Conv %",
    "Actions"
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: MaterialStateProperty.resolveWith(
            (states) => Colors.grey.shade200,
          ),
          columns: headers
              .map((header) => DataColumn(
                    label: Text(
                      header,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
              .toList(),
          rows: controller.filteredCampaigns
              .map((campaign) => CampaignTableRow.build(campaign))
              .toList(),
        ),
      ),
    );
  }
}
