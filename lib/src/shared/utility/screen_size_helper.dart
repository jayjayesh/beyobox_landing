import 'package:flutter/material.dart';

///Class to provide utility related function for screen size.
class ScreenHelper {
  ///Required constructor.
  ///@param context Context to be used.
  ScreenHelper.getInstance(this.context);

  ///Context of the screen.
  BuildContext context;

  ///Width of designed screen.
  double mWidth = 375;

  ///Height of designed screen.
  double mHeight = 812;

  ///Function to return ScreenAware height.
  ///@param height height to be converted.
  double getScreenAwareHeight(double height) {
    return MediaQuery.of(context).size.height / (mHeight / height);
  }

  ///Function to return ScreenAware width.
  ///@param width Width to be converted.
  double getScreenAwareWidth(double width) {
    return MediaQuery.of(context).size.width / (mWidth / width);
  }

  ///Function to return ScreenAware width.
  ///@param textSize Text size to be converted.
  double getScreenAwareTextSize(double textSize) {
    return MediaQuery.of(context).size.height / (mHeight / textSize);
  }

  static double height(double height, BuildContext context) {
    double mHeight = 812;

    double statusBarHeight = MediaQuery.of(context).padding.top;
    double navigationBarBarHeight = kToolbarHeight;
    double screenHeight = MediaQuery.of(context).size.height;

    return screenHeight / (mHeight / height);
  }

  ///Function to return ScreenAware width.
  ///@param width Width to be converted.
  static double width(double width, BuildContext context) {
    double mWidth = 375;
    return MediaQuery.of(context).size.width / (mWidth / width);
  }

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
