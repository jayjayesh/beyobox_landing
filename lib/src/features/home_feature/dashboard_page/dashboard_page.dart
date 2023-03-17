import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/features/home_feature/blog_page/blog_page.dart';
import 'package:beyobox/src/features/home_feature/client_page/client_page.dart';
import 'package:beyobox/src/features/home_feature/home_page/home_page.dart';
import 'package:beyobox/src/features/home_feature/project_page/project_page.dart';
import 'package:beyobox/src/features/home_feature/service_page/service_page.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'widgets/dashboard_header_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const routeName = '/dashboard_page';

  @override
  State<DashboardPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<DashboardPage> with TickerProviderStateMixin {
  late TabController _tabBarController;
  static const List<Widget> _tabBarViews = [
    HomePage(),
    ServicePage(),
    ProjectPage(),
    ClientPage(),
    BlogPage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length: _tabBarViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.defaultHorizontalPadding),
          child: Column(
            children: [
              20.heightBox,
              DashboardHeaderWidget(
                tabBarController: _tabBarController,
                onPressedHome: () {
                  _tabBarController.animateTo(0);
                },
                onPressedService: () {
                  _tabBarController.animateTo(1);
                },
                onPressedProject: () {
                  _tabBarController.animateTo(2);
                },
                onPressedClient: () {
                  _tabBarController.animateTo(3);
                },
                onPressedBlog: () {
                  _tabBarController.animateTo(4);
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppConst.defaultHorizontalPadding),
                  child: TabBarView(
                    controller: _tabBarController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: _tabBarViews,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
