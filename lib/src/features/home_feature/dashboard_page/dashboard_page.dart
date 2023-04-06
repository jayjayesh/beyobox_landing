import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/features/home_feature/contact_us_page/contact_us_page.dart';
import 'package:beyobox/src/features/home_feature/dashboard_page/widgets/dashboard_contact_us_button_widget.dart';
import 'package:beyobox/src/features/home_feature/dashboard_page/widgets/dashboard_header_tab_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/features/home_feature/blog_page/blog_page.dart';
import 'package:beyobox/src/features/home_feature/client_page/client_page.dart';
import 'package:beyobox/src/features/home_feature/home_page/home_page.dart';
import 'package:beyobox/src/features/home_feature/project_page/project_page.dart';
import 'package:beyobox/src/features/home_feature/service_page/service_page.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'widgets/dashboard_header_widget.dart';

final GlobalKey<ScaffoldState> dashboardPageScaffoldKey = GlobalKey<ScaffoldState>();
late TabController dashboardPageTabBarController;

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const routeName = '/dashboard_page';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with TickerProviderStateMixin {
  late DashboardHeaderTabBarItemWidget dashboardHeaderTabBarItemWidget;
  static const List<Widget> _tabBarViews = [
    HomePage(),
    ServicePage(),
    ProjectPage(),
    ClientPage(),
    BlogPage(),
    ContactUsPage()
  ];

  @override
  void initState() {
    super.initState();
    dashboardPageTabBarController = TabController(length: _tabBarViews.length, vsync: this);
    dashboardHeaderTabBarItemWidget = DashboardHeaderTabBarItemWidget(
      tabBarController: dashboardPageTabBarController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        key: dashboardPageScaffoldKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.defaultHorizontalPadding),
          child: Column(
            children: [
              20.heightBox,
              DashboardHeaderWidget(
                dashboardHeaderTabBarItemWidget: dashboardHeaderTabBarItemWidget,
                onPressedSideMenu: onPressSideMenuButton,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppConst.defaultHorizontalPadding),
                  child: TabBarView(
                    controller: dashboardPageTabBarController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: _tabBarViews,
                  ),
                ),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Container(
            // padding: const EdgeInsets.only(top: 200),
            // height: 300,
            // width: 200,
            // color: Colors.amber,
            child: Center(child: dashboardHeaderTabBarItemWidget),
          ),
        ),
        onEndDrawerChanged: (isOpened) {},
        floatingActionButton: FloatingActionButton(
          onPressed: onPressMessageButton,
          child: const DashboardContactUsButtonWidget(),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: onPressMessageButton,
        //   // backgroundColor: context.theme.primaryColor,
        //   child: const Icon(
        //     Icons.message_outlined,
        //   ),
        // ),
      ),
    );
  }

  ///
  ///------ OTHER ---------
  void onPressSideMenuButton() {
    // dashboardPageScaffoldKey.currentState!.openEndDrawer();
    // dashboardHeaderTabBarItemWidget
  }

  void onPressMessageButton() {
    // var controller = Get.find<DashboardHeaderTabBarItemWidgetController>();
    // controller.selectedTab = AppEnumDashboardTab.contactus;

    /*

    showPopover(
      context: context,
      bodyBuilder: (context) => Container(
        height: 300,
        width: 100,
        color: Colors.amber,
      ),
      onPop: () => debugPrint('Popover was popped!'),
      // barrierDismissible: false,
      direction: PopoverDirection.bottom,
      width: 200,
      height: 400,
      arrowHeight: 15,
      arrowWidth: 30,
    );

    */
  }
}
