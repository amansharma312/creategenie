import 'package:intl/intl.dart';

class NumUtils {
  static final _indianRupeesFormat = NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 2,
    symbol: '₹ ',
    name: 'INR',
  );

  static String inRupeesFormat(dynamic value, [double defaultVal = 0.00]) {
    final amount = double.tryParse(value.toString()) ?? defaultVal;

    final formattedAmount = _indianRupeesFormat.format(amount);
    return formattedAmount;
  }

  static String toIntFormat(num value) => value.toInt().toString();

  static String toIntStr(num? value) {
    if (value == null) return '';
    return value.toStringAsFixed(0);
  }

  static String toDoubleStr(num? value) {
    if (value == null) return '';
    return value.toStringAsFixed(2);
  }
}
