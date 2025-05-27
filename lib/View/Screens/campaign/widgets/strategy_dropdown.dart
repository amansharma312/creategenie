import 'package:create_ai_genie_web/Resources/color_manager.dart';
import 'package:create_ai_genie_web/View/Screens/campaign/widgets/strategy_builder_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class StrategyDropdown extends StatelessWidget {
  const StrategyDropdown({super.key});

  void _showCreateStrategyDialog(BuildContext context) {
    final nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Create Strategy"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Strategy Name"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.selectionColor,
              ),
              onPressed: () {
                final name = nameController.text.trim();
                if (name.isEmpty) {
                  Get.snackbar("Validation", "Please enter a strategy name");
                  return;
                }

                Navigator.of(context).pop(); // Close name input dialog

                // Open Strategy Builder Dialog
                showDialog(
                  context: context,
                  builder: (_) => const StrategyBuilderDialog(),
                );
              },
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF717D96)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.inter(
            fontSize: 13,
            color: CustomColors.lightTextColor,
          ),
          children: [
            const TextSpan(text: "Strategy ^ | "),
            TextSpan(
              text: "Create",
              style: TextStyle(
                color: CustomColors.selectionColor,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _showCreateStrategyDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
