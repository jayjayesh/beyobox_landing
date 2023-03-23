import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/features/home_feature/service_page/widgets/service_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        body: ScrollConfiguration(
          // NOTE : remove slider, hide slider, hide scroll indicator
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  // padding: const EdgeInsets.all(AppConst.defaultHorizontalPadding),
                  padding: const EdgeInsets.symmetric(vertical: AppConst.defaultHorizontalPadding),
                  child: Text(
                    AppLocalizations.of(context)!.servicePageHeading,
                    style: context.headlineSmall,
                  ),
                ),
                GridView(
                  padding: const EdgeInsets.only(bottom: 200),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: ResponsiveValue(
                      context,
                      defaultValue: 1,
                      valueWhen: const [
                        Condition.equals(
                          name: MOBILE,
                          value: 2,
                        ),
                        Condition.largerThan(
                          name: MOBILE,
                          value: 3,
                        ),
                      ],
                    ).value.orDefault.toInt(),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  children: [
                    ServiceItemWidget(
                      imageUrl: Assets.images.homePageYourSuccessImg.path,
                      title: AppLocalizations.of(context)!.servicePageService1Title,
                      description: AppLocalizations.of(context)!.servicePageService1Desc,
                    ),
                    ServiceItemWidget(
                      imageUrl: Assets.images.homePageOurTeam.path,
                      title: AppLocalizations.of(context)!.servicePageService2Title,
                      description: AppLocalizations.of(context)!.servicePageService2Desc,
                    ),
                    ServiceItemWidget(
                      imageUrl: Assets.images.homePageOurSolution.path,
                      title: AppLocalizations.of(context)!.servicePageService3Title,
                      description: AppLocalizations.of(context)!.servicePageService3Desc,
                    ),
                    ServiceItemWidget(
                      imageUrl: Assets.images.homePageOurCliets.path,
                      title: AppLocalizations.of(context)!.servicePageService4Title,
                      description: AppLocalizations.of(context)!.servicePageService4Desc,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
