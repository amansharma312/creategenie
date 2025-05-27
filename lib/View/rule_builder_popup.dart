import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Service/campaign_controller.dart';

class RuleBuilderPopup extends StatelessWidget {
  final String campaignId;
  final CampaignController controller = Get.find<CampaignController>();

  RuleBuilderPopup({super.key, required this.campaignId});

  final TextEditingController ctrCtrl = TextEditingController();
  final TextEditingController acosCtrl = TextEditingController();
  final TextEditingController bidCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Create Rule"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _inputField("CTR %", ctrCtrl),
          const SizedBox(height: 10),
          _inputField("Target ACoS %", acosCtrl),
          const SizedBox(height: 10),
          _inputField("Bid Adjustment \$", bidCtrl),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () async {
            await controller.applyRule(
              campaignId: campaignId,
              ctr: ctrCtrl.text,
              acos: acosCtrl.text,
              bidAdjustment: bidCtrl.text,
            );
            Navigator.of(context).pop();
          },
          child: const Text("Create"),
        )
      ],
    );
  }

  // ✅ THIS MUST BE INSIDE THE CLASS
  Widget _inputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        isDense: true,
      ),
    );
  }
}
