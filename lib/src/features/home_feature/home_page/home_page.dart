import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:beyobox/src/shared/utility/app_strings.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
        child: Scaffold(
      body: ScrollConfiguration(
        // NOTE : remove slider, hide slider, hide scroll indicator
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowPadding: const EdgeInsets.all(20),
                  columnPadding: const EdgeInsets.all(20),
                  rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                  columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text.rich(
                          TextSpan(
                            text: AppStrings.homePageTextHeading,
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 30.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 25.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 35.0,
                                      )
                                    ],
                                  ).value,
                                ),
                          ),
                        ),
                      ),
                    ),
                    const ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Placeholder(),
                      ),
                    ),
                  ],
                ),
                30.verticalSpace(),
                ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Placeholder(),
                      ),
                    ),
                    ResponsiveRowColumnItem(child: SizedBox(height: 20, width: 20)),
                    ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Placeholder(),
                      ),
                    ),
                    ResponsiveRowColumnItem(child: SizedBox(height: 20, width: 20)),
                    ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Placeholder(),
                      ),
                    ),
                  ],
                ),
                200.verticalSpace(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
