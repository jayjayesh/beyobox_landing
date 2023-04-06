import 'package:beyobox/src/services/api_services/contact_us_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsAddressWidgetConteroller extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final ContactUsServices contactUsServices = Get.find<ContactUsServices>();

  void sendEmail() {
    debugPrint('=============');
    debugPrint('nameController.text = ${nameController.text}');
    debugPrint('emailController.text = ${emailController.text}');
    debugPrint('subjectController.text = ${subjectController.text}');
    debugPrint('messageController.text = ${messageController.text}');

    contactUsServices.sendEmail({
      'name': nameController.text,
      'email': emailController.text,
      'subject': subjectController.text,
      'message': messageController.text,
    });
  }

  void clearText() {
    nameController.clear();
    emailController.clear();
    subjectController.clear();
    messageController.clear();
  }
}
