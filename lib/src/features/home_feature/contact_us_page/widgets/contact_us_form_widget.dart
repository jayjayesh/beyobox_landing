import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/shared/utility/app_utility.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:beyobox/src/shared/widgets/app_input_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ContactUsFormWidget extends StatelessWidget {
  const ContactUsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.all(8.0),
      width: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppInputTextField(
            hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderName,
          ),
          10.heightBox,
          AppInputTextField(
            hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderEmail,
          ),
          10.heightBox,
          AppInputTextField(
            hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderSubject,
          ),
          10.heightBox,
          AppInputTextField(
            hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderMessage,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
          ),
          10.heightBox,
          AppButtonElevated(
            text: AppLocalizations.of(context)!.contactUsPageFormButtonSend,
            // fillColor:
            //     controller.selectedTab == AppEnumDashboardTab.contactus ? AppColors.primary : AppColors.buttonGray,
            // showShadow: controller.selectedTab == AppEnumDashboardTab.contactus ? true : false,
            onPressed: () {
              AppUtility.sendEmail(
                subject: 'Box Subject',
                message: 'Hello sir, I want to inquire about your IT services',
              );
              // AppUtility.sendWhatsAppMessage('');
            },
          ),
          20.heightBox,
        ],
      ),
    );
  }
}