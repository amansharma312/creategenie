import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CampaignController extends GetxController {
  var campaigns = <Map<String, dynamic>>[
    {
      'name': 'Campaign 1',
      'targetAcos': 20,
      'acos': 18,
      'impressions': 1000,
      'clicks': 50,
      'ctr': 5.0,
      'spend': 200,
      'cpc': 4.0,
      'orders': 10,
      'sales': 500,
      'conversionRate': 20.0,
      'adOrders7D': 8,
      'campaignId': 'CAMP1',
      'bidAdjustment': 0.0, // Added to store bid adjustment
    },
    {
      'name': 'Campaign 2',
      'targetAcos': 25,
      'acos': 22,
      'impressions': 1500,
      'clicks': 75,
      'ctr': 5.0,
      'spend': 300,
      'cpc': 4.0,
      'orders': 15,
      'sales': 750,
      'conversionRate': 20.0,
      'adOrders7D': 12,
      'campaignId': 'CAMP2',
      'bidAdjustment': 0.0,
    },
    {
      'name': 'Campaign 3',
      'targetAcos': 30,
      'acos': 28,
      'impressions': 500,
      'clicks': 25,
      'ctr': 5.0,
      'spend': 100,
      'cpc': 4.0,
      'orders': 5,
      'sales': 250,
      'conversionRate': 20.0,
      'adOrders7D': 0,
      'campaignId': 'CAMP3',
      'bidAdjustment': 0.0,
    },
  ].obs;

  var filteredCampaigns = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    filteredCampaigns.assignAll(campaigns);
    super.onInit();
  }

  void updateSearch(String value) {
    filteredCampaigns.assignAll(campaigns.where((campaign) => campaign['name']
        .toString()
        .toLowerCase()
        .contains(value.toLowerCase())));
  }

  void updateProductType(String value) {
    // Implement product type filtering if needed
  }

  void setSelectedModule(String module) {
    // Implement module selection if needed
  }

  void applyFilters(Map<String, dynamic> filterCriteria) {
    filteredCampaigns.assignAll(campaigns.where((campaign) {
      bool passesFilter = true;

      // Filter based on Orders (e.g., Ad Orders - 7D)
      final ordersCriteria = filterCriteria['orders'] as Map<String, bool>;
      if (ordersCriteria['Ad Orders - 7D'] == true) {
        final adOrders7D = campaign['adOrders7D'] ?? 0;
        passesFilter = passesFilter && adOrders7D > 0;
      }

      // Filter based on Performance (e.g., Spend)
      final performanceCriteria =
          filterCriteria['performance'] as Map<String, bool>;
      if (performanceCriteria['Spend'] == true) {
        final spend = campaign['spend'] ?? 0;
        passesFilter = passesFilter && spend > 150;
      }

      // Filter based on Impressions
      if (performanceCriteria['Impressions'] == true) {
        final impressions = campaign['impressions'] ?? 0;
        passesFilter = passesFilter && impressions > 1000;
      }

      return passesFilter;
    }).toList());
  }

  void resetFilters() {
    filteredCampaigns.assignAll(campaigns);
  }

  Future<void> applyRule({
    required String campaignId,
    required String ctr,
    required String acos,
    required String bidAdjustment,
  }) async {
    // Convert input strings to numbers
    final double? ctrValue = double.tryParse(ctr);
    final double? acosValue = double.tryParse(acos);
    final double? bidAdjustmentValue = double.tryParse(bidAdjustment);

    if (ctrValue == null || acosValue == null || bidAdjustmentValue == null) {
      Get.snackbar(
          'Error', 'Invalid input values. Please enter valid numbers.');
      return;
    }

    // Find the campaign by ID and apply the rule
    final campaignIndex = campaigns
        .indexWhere((campaign) => campaign['campaignId'] == campaignId);
    if (campaignIndex != -1) {
      // Update the campaign with the new rule values
      campaigns[campaignIndex]['ctr'] = ctrValue;
      campaigns[campaignIndex]['targetAcos'] = acosValue;
      campaigns[campaignIndex]['bidAdjustment'] = bidAdjustmentValue;

      // Update the filtered campaigns to reflect the changes
      filteredCampaigns.assignAll(campaigns);
      Get.snackbar(
          'Success', 'Rule applied successfully to campaign $campaignId');
    } else {
      Get.snackbar('Error', 'Campaign with ID $campaignId not found');
    }
  }
}
