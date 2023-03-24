import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class AppUtility {
  ///
  /// --- Hide Keyboard ---
  ///
  static void hideGlobalKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void sendEmail({required String subject, required String message}) async {}

  static void sendWhatsAppMessage(String message) async {
    const whatsappUrlString = WhatsAppUnilink(
      phoneNumber: '917777777777',
      text: "Hey! I want to inquire about your services",
    );
    await launchUrl(whatsappUrlString.asUri());
  }
}
