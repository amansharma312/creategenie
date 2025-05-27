import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.only(bottom: 8.0),
    this.padding = const EdgeInsets.all(8.0),
  });

  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
