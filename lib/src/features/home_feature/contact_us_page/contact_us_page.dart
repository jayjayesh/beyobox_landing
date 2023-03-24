import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/features/home_feature/contact_us_page/widgets/contact_us_address_widget.dart';
import 'package:beyobox/src/features/home_feature/contact_us_page/widgets/contact_us_form_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:beyobox/gen/assets.gen.dart';
import 'package:beyobox/src/shared/utility/app_scaffold_wraper.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      child: Scaffold(
        body: ScrollConfiguration(
          // NOTE : remove slider, hide slider, hide scroll indicator
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              20.heightBox,
              //const SizedBox(height: 70, child: Placeholder()),
              RichText(
                text: TextSpan(
                  text: AppLocalizations.of(context)!.contactUsPageHeading,
                  style: context.headlineSmall,
                ),
              ),
              20.heightBox,
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                columnMainAxisAlignment: MainAxisAlignment.start,
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                rowSpacing: 10,
                columnSpacing: 10,
                layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: const [
                  ResponsiveRowColumnItem(child: ContactUsAddressWidget()),
                  ResponsiveRowColumnItem(child: ContactUsFormWidget()),
                ],
              ),
              40.heightBox,
              AppImageWidget(
                height: 500,
                imageUrl: Assets.images.contactUsStaticMap.path,
              ),
              100.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
