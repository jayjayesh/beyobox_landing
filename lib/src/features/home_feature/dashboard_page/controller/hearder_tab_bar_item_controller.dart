import 'package:beyobox/src/features/home_feature/dashboard_page/dashboard_page.dart';
import 'package:beyobox/src/shared/utility/app_enums.dart';
import 'package:get/get.dart';

class DashboardHeaderTabBarItemWidgetController extends GetxController {
  final tabItemWidth = 100.0;

  ///
  AppEnumDashboardTab _selectedTab = AppEnumDashboardTab.home;
  AppEnumDashboardTab get selectedTab => _selectedTab;
  set selectedTab(AppEnumDashboardTab value) {
    _selectedTab = value;
    if (dashboardPageScaffoldKey.currentState!.isEndDrawerOpen) {
      dashboardPageScaffoldKey.currentState!.closeEndDrawer();
    }
    update();

    ///
    Future.delayed(const Duration(milliseconds: 400), () {
      dashboardPageTabBarController.animateTo(value.index);
    });
  }
}
