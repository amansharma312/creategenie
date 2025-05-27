class StringUtils {
  static bool equals(String? str1, String? str2) {
    if (str1 == null || str2 == null) return false;
    return str1 == str2;
  }

  static bool equalsIgnoreCase(String? str1, String? str2) {
    if (str1 == null || str2 == null) return false;
    return str1.trim().toLowerCase() == str2.trim().toLowerCase();
  }

  static String trimTime(String? s1) {
    if (s1.doesNotHaveValue) return '';
    return RegExp(r'^\d{2}:\d{2}:\d{2}').stringMatch(s1!) ?? s1;
  }

  static String cleanText(String input) {
    return input
        .replaceAll(RegExp(r'\t'), ' ') // Tabs with a space
        .replaceAll(RegExp(r'\s+'),
            ' ') // Multiple spaces/tabs/newlines with a single space
        .replaceAll(RegExp(r'\u200B'),
            '') // zero-width spaces (or other Unicode spaces)
        .replaceAll(RegExp(r'[^\x20-\x7E]+'),
            '') // non-printable characters (ASCII control characters)
        .trim(); // Trim leading and trailing spaces
  }
}

extension StringExentions on String? {
  bool get containsValidValue =>
      this != null && (this!.trim().isNotEmpty) && this!.trim() != 'null';

  bool get doesNotHaveValue => !containsValidValue;
  String get valueOrHyphen => containsValidValue ? this! : '-';

  String get valueOrEmpty => this ?? '';
  String get valueOrNA => this ?? 'NA';

  bool equals(String? str) => StringUtils.equals(this, str);

  bool equalsIgnoreCase(String? str) => StringUtils.equalsIgnoreCase(this, str);

  bool get isValidNum => containsValidValue && num.tryParse(this!) != null;

  bool get isSVG => containsValidValue && this!.split('.').last == 'svg';

  bool containsIgnoreCase(String? other) {
    if (this == null || other == null) {
      return false;
    }
    return this!.toLowerCase().contains(other.toLowerCase());
  }

  String get titleCaseWords {
    final words = valueOrEmpty.replaceAll('_', ' ').split(' ');

    final capitalizedWords = words.map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).toList();
    return capitalizedWords.join(' ');
  }

  bool get isSeller => valueOrEmpty.trim().toLowerCase().startsWith('s');
  bool get isBuyer => !isSeller;

  bool get isNotAvailble {
    final normalizedValue =
        valueOrEmpty.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    return normalizedValue == 'na' || normalizedValue == 'n/a';
  }
}
