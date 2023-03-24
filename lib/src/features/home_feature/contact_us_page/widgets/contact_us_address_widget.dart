import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactUsAddressWidget extends StatelessWidget {
  const ContactUsAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      //  padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: AppLocalizations.of(context)!.contactUsPageAddreassTitle,
              style: context.titleLarge?.copyWith(
                color: context.theme.primaryColor,
              ),
            ),
          ),
          5.heightBox,
          RichText(
            text: TextSpan(
              text: AppLocalizations.of(context)!.contactUsPageAddressString,
              style: context.bodyMedium,
            ),
          ),
          5.heightBox,
          Text(
            AppLocalizations.of(context)!.contactUsPageEmail,
            style: context.bodyMedium,
          ),
          3.heightBox,
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.contactUsPageTelephoneTitle,
                style: context.bodyMedium,
              ),
              5.widthBox,
              Text(
                AppLocalizations.of(context)!.contactUsPageTelephoneNumber,
                style: context.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
