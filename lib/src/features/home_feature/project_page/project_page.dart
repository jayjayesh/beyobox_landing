import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:beyobox/src/shared/utility/app_strings.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppConst.defaultHorizontalPadding),
                child: Text(
                  AppStrings.projectPageHeading,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: AppStrings.projectPageSubHeading,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              30.verticalSpace(),
              GridView(
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
                children: const [
                  SizedBox(
                    width: 430,
                    height: 400,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    width: 430,
                    height: 400,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    width: 430,
                    height: 400,
                    child: Placeholder(),
                  ),
                ],
              ),
              200.verticalSpace(),
            ],
          ),
        ),
      ),
    ));
  }
}
