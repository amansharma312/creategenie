import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CampaignController extends GetxController {
  // Campaign data
  var campaigns = <Map<String, dynamic>>[].obs;
  var filteredCampaigns = <Map<String, dynamic>>[].obs;

  // Filters
  var searchQuery = ''.obs;
  var selectedProductType = ''.obs;

  // Selection and module control
  var selectedCampaigns = <String>{}.obs;
  var selectedModule = 'Bid Optimization'.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCampaigns();
    debounce(searchQuery, (_) => applyFilters(),
        time: const Duration(milliseconds: 300));
    debounce(selectedProductType, (_) => applyFilters(),
        time: const Duration(milliseconds: 300));
  }

  // Fetch campaigns from API
  Future<void> fetchCampaigns() async {
    try {
      final response = await http.get(
        Uri.parse("https://your-api-url.com/api/campaigns"),
        headers: {
          "Authorization": "Bearer YOUR_JWT_TOKEN",
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> raw = jsonDecode(response.body);
        campaigns.value = raw.map((e) => Map<String, dynamic>.from(e)).toList();
        applyFilters();
      } else {
        Get.snackbar(
            "Error", "Failed to fetch campaigns: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Error", "API call failed: $e");
    }
  }

  // Filter campaigns
  void applyFilters() {
    final q = searchQuery.value.toLowerCase();
    final type = selectedProductType.value.toLowerCase();

    filteredCampaigns.value = campaigns.where((c) {
      final name = (c['name'] ?? '').toLowerCase();
      final prod = (c['productType'] ?? '').toLowerCase();
      return (q.isEmpty || name.contains(q)) &&
          (type.isEmpty || prod.contains(type));
    }).toList();
  }

  // Input updates
  void updateSearch(String value) => searchQuery.value = value;
  void updateProductType(String value) => selectedProductType.value = value;

  // Selection logic
  void toggleSelection(String id) {
    if (selectedCampaigns.contains(id)) {
      selectedCampaigns.remove(id);
    } else {
      selectedCampaigns.add(id);
    }
  }

  void clearSelection() => selectedCampaigns.clear();
  void setSelectedModule(String module) => selectedModule.value = module;

  // Campaign actions (mocked for now)
  Future<void> pauseCampaign(String id) async {
    print("Pausing campaign $id");
  }

  Future<void> enableCampaign(String id) async {
    print("Enabling campaign $id");
  }

  Future<void> updateBid(String id, double bid) async {
    print("Updating bid for $id to \$${bid.toStringAsFixed(2)}");
  }

  // Bulk actions
  Future<void> bulkPause() async {
    for (var id in selectedCampaigns) {
      await pauseCampaign(id);
    }
  }

  Future<void> bulkEnable() async {
    for (var id in selectedCampaigns) {
      await enableCampaign(id);
    }
  }

  Future<void> bulkUpdateBid(double bid) async {
    for (var id in selectedCampaigns) {
      await updateBid(id, bid);
    }
  }

  // Rule creation
  Future<void> applyRule({
    required String campaignId,
    required String ctr,
    required String acos,
    required String bidAdjustment,
  }) async {
    final payload = {
      "campaign_id": campaignId,
      "ctr": ctr,
      "acos": acos,
      "bid_adjustment": bidAdjustment,
    };

    try {
      final response = await http.post(
        Uri.parse("https://your-api-url.com/api/rules"),
        headers: {
          "Authorization": "Bearer YOUR_JWT_TOKEN",
          "Content-Type": "application/json",
        },
        body: jsonEncode(payload),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar("Success", "Rule created successfully");
      } else {
        Get.snackbar("Error", "Failed to create rule: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Error", "Exception occurred: $e");
    }
  }
}
