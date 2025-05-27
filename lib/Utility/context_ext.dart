import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {

  bool get isLightTheme => colorScheme.brightness == Brightness.light;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  double get sizeOfWidth => MediaQuery.sizeOf(this).width;
  double get sizeOfHeight => MediaQuery.sizeOf(this).height;

  Future<T?> goToPage<T>(Widget child) => Navigator.of(this).push<T?>(
        MaterialPageRoute(builder: (ctx) => child),
      );

  void close<T>([T? data]) => Navigator.of(this).pop(data);
  void exit<T>([T? data]) => Navigator.of(this, rootNavigator: true).pop(data);

  // void showSnackbar(String content, AppSnackBarType type) {
  //   ScaffoldMessenger.of(this).showSnackBar(
  //     SnackBar(
  //         behavior: SnackBarBehavior.floating,
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         content: AppSnackBarWidget(content: content, type: type)),
  //   );
  // }

  // String dayOfTimeGreeting() {
  //   final currHour = DFU.now().hour;
  //   return switch (currHour) {
  //     < 12 => 'Good Morning,',
  //     > 12 && <= 16 => 'Good Afternoon,',
  //     > 16 && < 20 => 'Good Evening,',
  //     >= 20 => 'Good Night,',
  //     _ => '',
  //   };
  // }
}
