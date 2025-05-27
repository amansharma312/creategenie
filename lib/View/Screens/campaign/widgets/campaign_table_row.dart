import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Service/campaign_controller.dart';
import '../../../rule_builder_popup.dart';

class CampaignTableRow {
  static DataRow build(Map<String, dynamic> campaign) {
    final controller = Get.find<CampaignController>();
    final id = campaign['id'].toString();
    final isSelected = controller.selectedCampaigns.contains(id);
    final module = controller.selectedModule.value;

    return DataRow(
      selected: isSelected,
      onSelectChanged: (_) => controller.toggleSelection(id),
      cells: [
        DataCell(Text(campaign['name'] ?? "--")),
        DataCell(Text("${campaign['targetAcos']}%")),
        DataCell(Text("${campaign['acos']}%")),
        DataCell(Text("${campaign['impressions']}")),
        DataCell(Text("${campaign['clicks']}")),
        DataCell(Text("${campaign['ctr']}%")),
        DataCell(Text("\$${campaign['spend']}")),
        DataCell(Text("\$${campaign['cpc']}")),
        DataCell(Text("${campaign['orders']}")),
        DataCell(Text("\$${campaign['sales']}")),
        DataCell(Text("${campaign['conversionRate']}%")),
        DataCell(Row(
          children: [
            if (module == 'Bid Optimization')
              IconButton(
                icon: Icon(Icons.edit, color: CustomColors.selectionColor),
                tooltip: "Edit Bid",
                onPressed: () {
                  final bidCtrl = TextEditingController();
                  Get.defaultDialog(
                    title: "Adjust Bid",
                    content: Column(
                      children: [
                        TextField(
                          controller: bidCtrl,
                          decoration:
                              const InputDecoration(labelText: "Bid \$"),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            final bid = double.tryParse(bidCtrl.text);
                            if (bid != null) {
                              controller.updateBid(id, bid);
                              Get.back();
                            } else {
                              Get.snackbar("Invalid Input",
                                  "Please enter a valid number");
                            }
                          },
                          child: const Text("Update"),
                        )
                      ],
                    ),
                    onWillPop: () async {
                      bidCtrl.dispose();
                      return true;
                    },
                  );
                },
              ),
            if (module == 'Negative Word Finder' ||
                module == 'Advanced Optimization')
              IconButton(
                icon: const Icon(Icons.rule, color: Colors.indigo),
                tooltip: "Add Rule",
                onPressed: () => showDialog(
                  context: Get.context!,
                  builder: (_) => RuleBuilderPopup(campaignId: id),
                ),
              ),
            IconButton(
              icon:
                  const Icon(Icons.pause_circle_outline, color: Colors.orange),
              tooltip: "Pause Campaign",
              onPressed: () => controller.pauseCampaign(id),
            ),
            IconButton(
              icon: const Icon(Icons.play_circle_outline, color: Colors.green),
              tooltip: "Enable Campaign",
              onPressed: () => controller.enableCampaign(id),
            ),
          ],
        )),
      ],
    );
  }
}
