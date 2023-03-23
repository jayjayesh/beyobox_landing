import 'package:beyobox/src/features/home_feature/dashboard_page/controller/hearder_tab_bar_item_controller.dart';
import 'package:beyobox/src/shared/utility/app_colors.dart';
import 'package:beyobox/src/shared/utility/app_enums.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class DashboardHeaderTabBarItemWidget extends StatelessWidget {
  const DashboardHeaderTabBarItemWidget({
    super.key,
    required this.tabBarController,
  });

  final TabController tabBarController;

  // final controller = Get.find<DashboardHeaderTabBarItemWidgetController>();
  @override
  Widget build(BuildContext context) {
    DashboardHeaderTabBarItemWidgetController controller = Get.put(DashboardHeaderTabBarItemWidgetController());
    return _buildTabWrapper(context);
  }

  Widget _buildTabWrapper(BuildContext context) {
    return GetBuilder<DashboardHeaderTabBarItemWidgetController>(
      builder: (controller) {
        return Wrap(
          spacing: 10,
          runSpacing: 15,
          // alignment: WrapAlignment.end,
          children: [
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextHome,
              fillColor: controller.selectedTab == DashboardTab.home ? AppColors.primary : AppColors.buttonGray,
              showShadow: controller.selectedTab == DashboardTab.home ? true : false,
              onPressed: () {
                controller.selectedTab = DashboardTab.home;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextService,
              fillColor: controller.selectedTab == DashboardTab.services ? AppColors.primary : AppColors.buttonGray,
              showShadow: controller.selectedTab == DashboardTab.services ? true : false,
              onPressed: () {
                controller.selectedTab = DashboardTab.services;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextProjects,
              fillColor: controller.selectedTab == DashboardTab.projects ? AppColors.primary : AppColors.buttonGray,
              showShadow: controller.selectedTab == DashboardTab.projects ? true : false,
              onPressed: () {
                controller.selectedTab = DashboardTab.projects;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextClients,
              fillColor: controller.selectedTab == DashboardTab.clients ? AppColors.primary : AppColors.buttonGray,
              showShadow: controller.selectedTab == DashboardTab.clients ? true : false,
              onPressed: () {
                controller.selectedTab = DashboardTab.clients;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextBlog,
              fillColor: controller.selectedTab == DashboardTab.blogs ? AppColors.primary : AppColors.buttonGray,
              showShadow: controller.selectedTab == DashboardTab.blogs ? true : false,
              onPressed: () {
                controller.selectedTab = DashboardTab.blogs;
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return GetBuilder<DashboardHeaderTabBarItemWidgetController>(
      builder: (controller) {
        return TabBar(
          controller: tabBarController,
          // indicatorColor: Theme.of(context).dividerColor,
          // indicatorPadding: const EdgeInsets.only(top: 10),
          tabs: [
            Container(
              width: controller.tabItemWidth,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dashboardButtonTextHome,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              width: controller.tabItemWidth,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dashboardButtonTextService,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              width: controller.tabItemWidth,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dashboardButtonTextProjects,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              width: controller.tabItemWidth,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dashboardButtonTextClients,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              width: controller.tabItemWidth,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.dashboardButtonTextBlog,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}
