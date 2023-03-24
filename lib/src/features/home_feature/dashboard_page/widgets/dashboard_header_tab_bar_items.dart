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
    this.tabBarController,
  });

  final TabController? tabBarController;

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
              fillColor: controller.selectedTab == AppEnumDashboardTab.home
                  ? context.theme.primaryColor
                  : AppColors.buttonGray,
              // showShadow: controller.selectedTab == AppEnumDashboardTab.home ? true : false,
              onPressed: () {
                controller.selectedTab = AppEnumDashboardTab.home;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextService,
              fillColor: controller.selectedTab == AppEnumDashboardTab.services
                  ? context.theme.primaryColor
                  : AppColors.buttonGray,
              // showShadow: controller.selectedTab == AppEnumDashboardTab.services ? true : false,
              onPressed: () {
                controller.selectedTab = AppEnumDashboardTab.services;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextProjects,
              fillColor: controller.selectedTab == AppEnumDashboardTab.projects
                  ? context.theme.primaryColor
                  : AppColors.buttonGray,
              // showShadow: controller.selectedTab == AppEnumDashboardTab.projects ? true : false,
              onPressed: () {
                controller.selectedTab = AppEnumDashboardTab.projects;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextClients,
              fillColor: controller.selectedTab == AppEnumDashboardTab.clients
                  ? context.theme.primaryColor
                  : AppColors.buttonGray,
              // showShadow: controller.selectedTab == AppEnumDashboardTab.clients ? true : false,
              onPressed: () {
                controller.selectedTab = AppEnumDashboardTab.clients;
              },
            ),
            AppButtonElevated(
              text: AppLocalizations.of(context)!.dashboardButtonTextBlog,
              fillColor: controller.selectedTab == AppEnumDashboardTab.blogs
                  ? context.theme.primaryColor
                  : AppColors.buttonGray,
              // showShadow: controller.selectedTab == AppEnumDashboardTab.blogs ? true : false,
              onPressed: () {
                controller.selectedTab = AppEnumDashboardTab.blogs;
              },
            ),
            // AppButtonElevated(
            //   text: AppLocalizations.of(context)!.dashboardButtonTextContactUs,
            //   fillColor: controller.selectedTab == AppEnumDashboardTab.contactus
            //       ? context.theme.primaryColor
            //       : AppColors.buttonGray,
            //   // showShadow: controller.selectedTab == AppEnumDashboardTab.contactus ? true : false,
            //   onPressed: () {
            //     controller.selectedTab = AppEnumDashboardTab.contactus;
            //   },
            // ),
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
