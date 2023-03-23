import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/features/home_feature/blog_page/widgets/blog_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
        child: Scaffold(
      body: ScrollConfiguration(
        // NOTE : remove slider, hide slider, hide scroll indicator
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView(
          padding: const EdgeInsets.all(AppConst.defaultHorizontalPadding),
          // shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveValue(
              context,
              defaultValue: 1,
              valueWhen: const [
                // Condition.equals(
                //   name: MOBILE,
                //   value: 2,
                // ),
                // Condition.largerThan(
                //   name: MOBILE,
                //   value: 3,
                // ),
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
            // childAspectRatio: 2 / 3,
            mainAxisExtent: 505,
          ),
          children: [
            BlogItemWidget(
              imageUrl: Assets.images.homePageYourSuccessImg.path,
              title: AppLocalizations.of(context)!.blogCardWidget1Title,
              description: AppLocalizations.of(context)!.blogCardWidget1Desc,
              date: AppLocalizations.of(context)!.blogCardWidget1date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurTeam.path,
              title: AppLocalizations.of(context)!.blogCardWidget2Title,
              description: AppLocalizations.of(context)!.blogCardWidget2Desc,
              date: AppLocalizations.of(context)!.blogCardWidget2date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurSolution.path,
              title: AppLocalizations.of(context)!.blogCardWidget3Title,
              description: AppLocalizations.of(context)!.blogCardWidget3Desc,
              date: AppLocalizations.of(context)!.blogCardWidget3date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurCliets.path,
              title: AppLocalizations.of(context)!.blogCardWidget4Title,
              description: AppLocalizations.of(context)!.blogCardWidget4Desc,
              date: AppLocalizations.of(context)!.blogCardWidget4date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageYourSuccessImg.path,
              title: AppLocalizations.of(context)!.blogCardWidget5Title,
              description: AppLocalizations.of(context)!.blogCardWidget5Desc,
              date: AppLocalizations.of(context)!.blogCardWidget5date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurTeam.path,
              title: AppLocalizations.of(context)!.blogCardWidget6Title,
              description: AppLocalizations.of(context)!.blogCardWidget6Desc,
              date: AppLocalizations.of(context)!.blogCardWidget6date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurSolution.path,
              title: AppLocalizations.of(context)!.blogCardWidget7Title,
              description: AppLocalizations.of(context)!.blogCardWidget7Desc,
              date: AppLocalizations.of(context)!.blogCardWidget7date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurCliets.path,
              title: AppLocalizations.of(context)!.blogCardWidget8Title,
              description: AppLocalizations.of(context)!.blogCardWidget8Desc,
              date: AppLocalizations.of(context)!.blogCardWidget8date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageYourSuccessImg.path,
              title: AppLocalizations.of(context)!.blogCardWidget9Title,
              description: AppLocalizations.of(context)!.blogCardWidget9Desc,
              date: AppLocalizations.of(context)!.blogCardWidget9date,
              onPresssReadMoreButton: () {},
            ),
            BlogItemWidget(
              imageUrl: Assets.images.homePageOurTeam.path,
              title: AppLocalizations.of(context)!.blogCardWidget10Title,
              description: AppLocalizations.of(context)!.blogCardWidget10Desc,
              date: AppLocalizations.of(context)!.blogCardWidget10date,
              onPresssReadMoreButton: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
