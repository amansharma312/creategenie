import 'dart:html' as html; // Important for download

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Service/campaign_controller.dart';

class CampaignHeaderActions extends StatelessWidget {
  CampaignHeaderActions({Key? key}) : super(key: key);

  final CampaignController controller = Get.find<CampaignController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () async {
            final selected = controller.campaigns
                .where((c) =>
                    controller.selectedCampaigns.contains(c['id'].toString()))
                .toList();

            if (selected.isEmpty) {
              Get.snackbar('Error', 'Select at least one campaign');
            } else {
              await exportCampaigns(selected);
            }
          },
          child: const Text('Export Selected'),
        ),
        const SizedBox(width: 12),
        ElevatedButton(
          onPressed: () {
            if (controller.selectedCampaigns.isEmpty) {
              Get.snackbar('Error', 'Select campaigns to pause');
            } else {
              controller.bulkPause();
            }
          },
          child: const Text('Pause Selected'),
        ),
        const SizedBox(width: 12),
        ElevatedButton(
          onPressed: () {
            if (controller.selectedCampaigns.isEmpty) {
              Get.snackbar('Error', 'Select campaigns to enable');
            } else {
              controller.bulkEnable();
            }
          },
          child: const Text('Enable Selected'),
        ),
      ],
    );
  }

  // ✅ Define the missing function here
  Future<void> exportCampaigns(List campaigns) async {
    final csv = StringBuffer();
    csv.writeln('Name,ACoS,Spend,Sales'); // CSV Header

    for (var campaign in campaigns) {
      csv.writeln(
          '${campaign['name']},${campaign['acos']},${campaign['spend']},${campaign['sales']}');
    }

    final blob = html.Blob([csv.toString()], 'text/csv');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'selected_campaigns.csv')
      ..click();
    html.Url.revokeObjectUrl(url);
  }
}
