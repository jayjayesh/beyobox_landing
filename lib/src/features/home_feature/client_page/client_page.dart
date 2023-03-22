import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/features/home_feature/client_page/widgets/client_item_widget.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        body: ScrollConfiguration(
          // NOTE : remove slider, hide slider, hide scroll indicator
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  // padding: const EdgeInsets.all(AppConst.defaultHorizontalPadding),
                  padding: const EdgeInsets.symmetric(vertical: AppConst.defaultHorizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.clientPageHeading,
                          style: context.headlineSmall,
                        ),
                      ),
                      10.heightBox,
                      RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.clientPageSubHeading,
                          style: context.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                30.heightBox,
                Table(
                  children: [
                    TableRow(
                      children: [
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo1.path,
                          fit: BoxFit.contain,
                        ),
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo2.path,
                          fit: BoxFit.contain,
                        ),
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo3.path,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    TableRow(children: [
                      30.heightBox,
                      30.heightBox,
                      30.heightBox,
                    ]),
                    TableRow(
                      children: [
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo4.path,
                          fit: BoxFit.contain,
                        ),
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo5.path,
                          fit: BoxFit.contain,
                        ),
                        AppImageWidget(
                          width: 100,
                          height: 100,
                          imageUrl: Assets.images.clientPageLogo6.path,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
                30.heightBox,
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
                          value: 1,
                        ),
                        Condition.largerThan(
                          name: MOBILE,
                          value: 2,
                        ),
                        Condition.largerThan(
                          name: TABLET,
                          value: 3,
                        ),
                      ],
                    ).value.orDefault.toInt(),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  children: [
                    ClientItemWidget(
                      title: AppLocalizations.of(context)!.clientPageStory1Title,
                      description: AppLocalizations.of(context)!.clientPageStory1Desc,
                    ),
                    ClientItemWidget(
                      title: AppLocalizations.of(context)!.clientPageStory2Title,
                      description: AppLocalizations.of(context)!.clientPageStory2Desc,
                    ),
                    ClientItemWidget(
                      title: AppLocalizations.of(context)!.clientPageStory3Title,
                      description: AppLocalizations.of(context)!.clientPageStory3Desc,
                    ),
                    ClientItemWidget(
                      title: AppLocalizations.of(context)!.clientPageStory4Title,
                      description: AppLocalizations.of(context)!.clientPageStory4Desc,
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
