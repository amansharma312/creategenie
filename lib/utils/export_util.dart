import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/dashboard/controllers/campaign_controller.dart';

class CampaignHeaderActions extends StatelessWidget {
  CampaignHeaderActions({Key? key}) : super(key: key);

  final CampaignController controller = Get.find<CampaignController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            final selected = controller.campaigns
                .where((c) =>
                    controller.selectedCampaigns.contains(c['id'].toString()))
                .toList();

            if (selected.isEmpty) {
              Get.snackbar('Error', 'Select at least one campaign');
            } else {
              exportCampaigns(selected);
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
}
