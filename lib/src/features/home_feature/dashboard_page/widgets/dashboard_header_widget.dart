import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/features/home_feature/dashboard_page/widgets/dashboard_header_menu_button_widget.dart';
import 'package:beyobox/src/features/home_feature/dashboard_page/widgets/dashboard_header_tab_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({
    super.key,
    required this.dashboardHeaderTabBarItemWidget,
    this.onPressedSideMenu,
  });

  final DashboardHeaderTabBarItemWidget dashboardHeaderTabBarItemWidget;
  final VoidCallback? onPressedSideMenu;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(AppConst.defaultHorizontalPadding),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 210,
              margin: const EdgeInsetsDirectional.only(end: 10.0),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: 6,
                      margin: const EdgeInsets.symmetric(vertical: 9),
                      color: context.theme.primaryColor,
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.dashboardBeyoBoxSolution,
                          style: context.textTheme.headlineMedium?.bold.copyWith(
                            // fontStyle: GoogleFonts.fasthand().fontStyle,
                            color: context.theme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.smallerThan(name: MOBILE),
                Condition.equals(name: MOBILE),
              ],
              child: Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: _buildSideMenuButton(context),
                ),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.largerThan(name: MOBILE),
              ],
              child: Expanded(
                child: Center(
                  child: dashboardHeaderTabBarItemWidget,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSideMenuButton(BuildContext context) {
    return const DashboardHeaderMenuButtonWidget(
      height: 50,
      width: 50,
    );
  }
}
