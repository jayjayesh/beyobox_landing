import 'package:flutter/material.dart';

class AppUtility {
  ///
  /// --- Hide Keyboard ---
  ///
  static void hideGlobalKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
