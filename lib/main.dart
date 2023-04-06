import 'dart:io';

import 'package:beyobox/src/get_x_dependency_injection.dart';
import 'package:beyobox/src/injection.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/features/settings/settings_controller.dart';
import 'src/features/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();
  // DependencyInjection.init();
  // NOTE : Exception: HandshakeException: Handshake error in client
  HttpOverrides.global = MyProxyHttpOverride();
  GetXDependencyInjection.init();
  configureDependencies();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}

class MyProxyHttpOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final httpClient = super.createHttpClient(context);
    //NOTE: Charles proxy : to enable uncomment this code
    //FIXME: comment this testing code
    // if (kDebugMode) {
    //   httpClient.findProxy = (uri) {
    //     return kDebugMode ? 'PROXY $proxy;' : '';
    //   };
    // }

    // This is a workaround to allow Charles to receive
    // SSL payloads when your app is running on Android.
    httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;
    //..badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    ///
    return httpClient;
  }
}
