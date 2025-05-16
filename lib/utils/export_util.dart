import 'dart:html' as html;

/// Exports a list of campaigns to a CSV file.
void exportCampaigns(List<Map<String, dynamic>> campaigns) {
  final csv = StringBuffer();

  // Add CSV header
  csv.writeln("Name,ACoS,Spend,Sales");

  // Add campaign rows
  for (final campaign in campaigns) {
    csv.writeln("${campaign['name'] ?? '--'},"
        "${campaign['acos'] ?? '--'},"
        "${campaign['spend'] ?? '--'},"
        "${campaign['sales'] ?? '--'}");
  }

  // Create and download CSV file
  final blob = html.Blob([csv.toString()], 'text/csv');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "campaigns_export.csv")
    ..click();

  // Clean up the URL object
  html.Url.revokeObjectUrl(url);
}
