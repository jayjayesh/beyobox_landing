import 'package:flutter/material.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:beyobox/src/shared/utility/app_strings.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppConst.defaultHorizontalPadding),
                child: Text(
                  AppStrings.clientPageHeading,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: AppStrings.clientPageSubHeading,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              30.verticalSpace(),
              Table(
                children: const [
                  TableRow(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Placeholder(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              30.verticalSpace(),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
