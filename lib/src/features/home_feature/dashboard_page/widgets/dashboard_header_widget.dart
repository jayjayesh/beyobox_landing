import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_colors.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_enums.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DashboardHeaderWidget extends StatefulWidget {
  const DashboardHeaderWidget({
    super.key,
    required this.tabBarController,
    this.onPressedHome,
    this.onPressedService,
    this.onPressedProject,
    this.onPressedClient,
    this.onPressedBlog,
  });

  final TabController tabBarController;
  final VoidCallback? onPressedHome;
  final VoidCallback? onPressedService;
  final VoidCallback? onPressedProject;
  final VoidCallback? onPressedClient;
  final VoidCallback? onPressedBlog;

  @override
  State<DashboardHeaderWidget> createState() => _DashboardHeaderWidgetState();
}

class _DashboardHeaderWidgetState extends State<DashboardHeaderWidget> {
  DashboardTab _selectedTab = DashboardTab.home;
  final tabItemWidth = 100.0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConst.defaultHorizontalPadding),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.largerThan(name: MOBILE),
              ],
              child: Text(
                AppLocalizations.of(context)!.dashboardBeyoBoxSolution,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Expanded(
              child: Center(
                child: _buildTabWrapper(),
                // child: _buildTabBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: widget.tabBarController,
      // indicatorColor: Theme.of(context).dividerColor,
      // indicatorPadding: const EdgeInsets.only(top: 10),
      tabs: [
        Container(
          width: tabItemWidth,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.dashboardButtonTextHome,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          width: tabItemWidth,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.dashboardButtonTextService,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          width: tabItemWidth,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.dashboardButtonTextProjects,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          width: tabItemWidth,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.dashboardButtonTextClients,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          width: tabItemWidth,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.dashboardButtonTextBlog,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }

  Widget _buildTabWrapper() {
    return Wrap(
      spacing: 10,
      runSpacing: 15,
      // alignment: WrapAlignment.end,
      children: [
        AppButtonElevated(
          text: AppLocalizations.of(context)!.dashboardButtonTextHome,
          fillColor: _selectedTab == DashboardTab.home ? AppColors.primary : AppColors.buttonGray,
          showShadow: _selectedTab == DashboardTab.home ? true : false,
          onPressed: () {
            setState(() {
              _selectedTab = DashboardTab.home;
              widget.onPressedHome?.call();
            });
          },
        ),
        AppButtonElevated(
          text: AppLocalizations.of(context)!.dashboardButtonTextService,
          fillColor: _selectedTab == DashboardTab.services ? AppColors.primary : AppColors.buttonGray,
          showShadow: _selectedTab == DashboardTab.services ? true : false,
          onPressed: () {
            setState(() {
              _selectedTab = DashboardTab.services;
              widget.onPressedService?.call();
            });
          },
        ),
        AppButtonElevated(
          text: AppLocalizations.of(context)!.dashboardButtonTextProjects,
          fillColor: _selectedTab == DashboardTab.projects ? AppColors.primary : AppColors.buttonGray,
          showShadow: _selectedTab == DashboardTab.projects ? true : false,
          onPressed: () {
            setState(() {
              _selectedTab = DashboardTab.projects;
              widget.onPressedProject?.call();
            });
          },
        ),
        AppButtonElevated(
          text: AppLocalizations.of(context)!.dashboardButtonTextClients,
          fillColor: _selectedTab == DashboardTab.clients ? AppColors.primary : AppColors.buttonGray,
          showShadow: _selectedTab == DashboardTab.clients ? true : false,
          onPressed: () {
            setState(() {
              _selectedTab = DashboardTab.clients;
              widget.onPressedClient?.call();
            });
          },
        ),
        AppButtonElevated(
          text: AppLocalizations.of(context)!.dashboardButtonTextBlog,
          fillColor: _selectedTab == DashboardTab.blogs ? AppColors.primary : AppColors.buttonGray,
          showShadow: _selectedTab == DashboardTab.blogs ? true : false,
          onPressed: () {
            setState(() {
              _selectedTab = DashboardTab.blogs;
              widget.onPressedBlog?.call();
            });
          },
        ),
      ],
    );
  }
}
