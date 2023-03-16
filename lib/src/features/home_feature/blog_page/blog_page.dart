import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      ),
    ));
  }
}
