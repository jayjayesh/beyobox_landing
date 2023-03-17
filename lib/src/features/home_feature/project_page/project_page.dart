import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/features/home_feature/project_page/widgets/project_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

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
                          text: AppLocalizations.of(context)!.projectPageHeading,
                          style: context.headlineSmall,
                        ),
                      ),
                      10.heightBox,
                      RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.projectPageSubHeading,
                          style: context.bodyMedium,
                        ),
                      ),
                    ],
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
                    ProjectItemWidget(
                      title: AppLocalizations.of(context)!.projectPageProject1Title,
                      description: AppLocalizations.of(context)!.projectPageProject1Desc,
                    ),
                    ProjectItemWidget(
                      title: AppLocalizations.of(context)!.projectPageProject2Title,
                      description: AppLocalizations.of(context)!.projectPageProject2Desc,
                    ),
                    ProjectItemWidget(
                      title: AppLocalizations.of(context)!.projectPageProject3Title,
                      description: AppLocalizations.of(context)!.projectPageProject3Desc,
                    ),
                    ProjectItemWidget(
                      title: AppLocalizations.of(context)!.projectPageProject4Title,
                      description: AppLocalizations.of(context)!.projectPageProject4Desc,
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
