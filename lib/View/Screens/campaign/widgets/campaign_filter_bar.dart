// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../constants/colors.dart';
//
// class StrategyDropdown extends StatelessWidget {
//   StrategyDropdown({super.key});
//
//   void _showCreateStrategyDialog(BuildContext context) {
//     final nameController = TextEditingController();
//
//     Get.defaultDialog(
//       title: "Create Strategy",
//       content: Column(
//         children: [
//           TextField(
//             controller: nameController,
//             decoration: const InputDecoration(labelText: "Strategy Name"),
//           ),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () {
//               final strategyName = nameController.text.trim();
//               if (strategyName.isEmpty) {
//                 Get.snackbar("Validation", "Strategy name is required");
//                 return;
//               }
//               // TODO: Connect to backend to store strategy
//               print("Creating strategy: $strategyName");
//               Get.snackbar("Success", "Strategy '$strategyName' created");
//               Get.back();
//             },
//             child: const Text("Create"),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _showCreateStrategyDialog(context),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
//         decoration: BoxDecoration(
//           border: Border.all(color: const Color(0xFF717D96)),
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: RichText(
//           text: TextSpan(
//             style: GoogleFonts.inter(
//                 fontSize: 13, color: CustomColors.lightTextColor),
//             children: [
//               const TextSpan(text: "Strategy ^ | "),
//               TextSpan(
//                 text: "Create",
//                 style: TextStyle(color: CustomColors.selectionColor),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
