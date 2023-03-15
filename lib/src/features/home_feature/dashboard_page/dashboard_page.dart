import 'package:flutter/material.dart';
import 'package:landing/src/shared/utility/app_const.dart';
import 'package:landing/src/shared/utility/app_extensions.dart';
import 'package:landing/src/shared/utility/app_scaffold_wraper.dart';
import 'package:landing/src/shared/utility/app_strings.dart';
import 'package:landing/src/shared/widgets/app_button_elevated.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const routeName = '/dashboard_page';

  @override
  State<DashboardPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.defaultHorizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.dashboardBeyoBoxSolution,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      //const Spacer(),
                      AppButtonElevated(text: AppStrings.dashboardButtonTextHome, onPressed: () {}),
                      10.horizontalSpace(),
                      AppButtonElevated(text: AppStrings.dashboardButtonTextService, onPressed: () {}),
                      10.horizontalSpace(),
                      AppButtonElevated(text: AppStrings.dashboardButtonTextProjects, onPressed: () {}),
                      10.horizontalSpace(),
                      AppButtonElevated(text: AppStrings.dashboardButtonTextClients, onPressed: () {}),
                      10.horizontalSpace(),
                      AppButtonElevated(text: AppStrings.dashboardButtonTextBlog, onPressed: () {}),
                      10.horizontalSpace(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
