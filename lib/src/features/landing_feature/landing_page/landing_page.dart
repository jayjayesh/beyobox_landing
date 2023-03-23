import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/features/home_feature/dashboard_page/dashboard_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const routeName = '/';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    WidgetsBinding.instance.endOfFrame.then((_) {
      Navigator.of(context).pushReplacementNamed(DashboardPage.routeName);
      // Navigator.of(context).pushNamed(DashboardPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffoldWrapper(child: Scaffold());
  }
}
