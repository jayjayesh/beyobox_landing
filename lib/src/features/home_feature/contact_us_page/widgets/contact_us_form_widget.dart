import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/features/home_feature/contact_us_page/controller/contact_us_address_widget_controller.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:beyobox/src/shared/widgets/app_input_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsFormWidget extends StatelessWidget {
  const ContactUsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ContactUsAddressWidgetConteroller controller = Get.put(ContactUsAddressWidgetConteroller());
    return _buildWidget(context);
  }

  @override
  Widget _buildWidget(BuildContext context) {
    return GetBuilder<ContactUsAddressWidgetConteroller>(builder: (controller) {
      controller.contactUsServices.getDataMethod();
      return Form(
        key: controller.formKey,
        child: SizedBox(
          // padding: const EdgeInsets.all(8.0),
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppInputTextField(
                hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderName,
                controller: controller.nameController,
              ),
              10.heightBox,
              AppInputTextField(
                hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderEmail,
                controller: controller.emailController,
              ),
              10.heightBox,
              AppInputTextField(
                hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderSubject,
                controller: controller.subjectController,
              ),
              10.heightBox,
              AppInputTextField(
                hintText: AppLocalizations.of(context)!.contactUsPageFormFieldPlaceHolderMessage,
                controller: controller.messageController,
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
                  ///
                  controller.sendEmail();
                  // To hide popupMenuButton this widget
                  controller.clearText();
                  Navigator.of(context).pop();

                  ///
                  // AppUtility.sendEmail(
                  //   subject: 'Box Subject',
                  //   message: 'Hello sir, I want to inquire about your IT services',
                  // );
                  // AppUtility.sendWhatsAppMessage('');
                },
              ),
              20.heightBox,
            ],
          ),
        ),
      );
    });
  }

  //-------- Other --------------
}
