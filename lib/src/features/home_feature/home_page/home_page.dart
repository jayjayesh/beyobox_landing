import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/features/home_feature/home_page/widgets/home_card_widget.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text.rich(
                          TextSpan(
                            text: AppLocalizations.of(context)!.homePageTextHeading,
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
                          maxLines: 4,
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: 500,
                        height: 350,
                        child: AppImageWidget(
                          fit: BoxFit.contain,
                          imageUrl: Assets.svg.feedbackThankyou.path,
                        ),
                      ),
                    ),
                  ],
                ),
                ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveRowColumnItem(
                      child: HomeCardWidget(
                        padding: const EdgeInsets.only(top: 20),
                        title: AppLocalizations.of(context)!.homePageCard1Heading,
                        description: AppLocalizations.of(context)!.homePageCard1Description,
                        imageUrl: Assets.images.homePageYourSuccessImg.path,
                        onPresssMoreButton: () {},
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: HomeCardWidget(
                        padding: const EdgeInsets.only(top: 20),
                        title: AppLocalizations.of(context)!.homePageCard2Heading,
                        description: AppLocalizations.of(context)!.homePageCard2Description,
                        imageUrl: Assets.images.homePageOurTeam.path,
                        onPresssMoreButton: () {},
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: HomeCardWidget(
                        padding: const EdgeInsets.only(top: 20),
                        title: AppLocalizations.of(context)!.homePageCard3Heading,
                        description: AppLocalizations.of(context)!.homePageCard3Description,
                        imageUrl: Assets.images.homePageOurSolution.path,
                        onPresssMoreButton: () {},
                      ),
                    ),
                  ],
                ),
                200.heightBox,
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
