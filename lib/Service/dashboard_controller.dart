import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxBool isSidebarOpen = true.obs;
  void toggleSidebar() {
    isSidebarOpen.value = !isSidebarOpen.value;
  }

  RxInt selectedSidebarIndex=0.obs;

  List<String> sidebarItems = [
    "Account Dashboard",
    "Campaign Manager",
    "Campaign Analytics",
    "Campaign Optimizer",
    "Keyword Manager",
    "Competitors Analytics",
    "Bulk Listing Optimization",
    "Take a Tour",
    "Customer Support",
    "Sign Out"
  ];
}
