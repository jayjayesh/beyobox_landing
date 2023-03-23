import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_enums.dart';
import 'app_theme_data_text_style.dart';
import 'app_extensions.dart';

class AppToast {
  ///
  static void show({
    required String message,
    Duration duration = const Duration(seconds: 5),
    Color backgroundColor = AppColors.toastBackGround,
    AppEnumSnackbarType type = AppEnumSnackbarType.normal,
  }) {
    ///
    /// Guard
    if (message.isEmpty) {
      return;
    }

    final messageText = message.truncateWithEllipsis(200);
    // final messageText = message.truncateWithEllipsis(90);

    //-----------------------

    BotToast.showCustomText(
      duration: const Duration(seconds: 5),
      clickClose: true,
      // onlyOne: onlyOne,
      // crossPage: false,
      // ignoreContentClick: ignoreContentClick,
      // backgroundColor: Color(backgroundColor),
      // backButtonBehavior: backButtonBehavior,
      // animationDuration: Duration(milliseconds: animationMilliseconds),
      // animationReverseDuration: Duration(milliseconds: animationReverseMilliseconds),
      toastBuilder: (_) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: type.getToastBackgroundColor,
            boxShadow: const [
              BoxShadow(
                color: AppColors.black,
                // color: AppUtility.appThemeIsDark() ? AppColors.textWhite : AppColors.black,
                blurRadius: 2, // 8,
                offset: Offset(1, 1),
                blurStyle: BlurStyle.outer,
              ),
              // BoxShadow(
              //   color: Colors.grey.withOpacity(0.5),
              //   spreadRadius: 3,
              //   blurRadius: 5,
              //   offset: const Offset(1, 3), // changes position of shadow
              // ),
              // BoxShadow(
              //   color: (AppUtility.appThemeIsDark() ? AppColors.textWhite : AppColors.textBlack).withOpacity(0.3),
              //   blurRadius: 10, //21, // soften the shadow
              //   spreadRadius: 0.01, //extend the shadow
              //   offset: const Offset(
              //     1, // Move to right 10  horizontally
              //     2, // Move to bottom 10 Vertically
              //   ),
              // ),
            ],
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              // text: (messageText + messageText + messageText).truncateWithEllipsis(90),
              text: messageText,
              style: myBodytext1.copyWith(color: type.getToastTextColor),
            ),
          ),
        );
      },
    );

    //-----------------------
/*
    EasyLoading.instance
      ..displayDuration = duration
      ..backgroundColor = backgroundColor
      ..toastPosition = EasyLoadingToastPosition.top
      ..animationStyle = EasyLoadingAnimationStyle.offset
      ..animationDuration = const Duration(milliseconds: 400)
      ..textAlign = TextAlign.start
      ..textPadding = EdgeInsets.zero
      ..userInteractions = true
      ..dismissOnTap = true;
    //..loadingStyle = AppUtility.systemThemeIsDark() ? EasyLoadingStyle.light : EasyLoadingStyle.dark;

    EasyLoading.showToast(message);
*/
    //-----------------------

    /*
    // Get.defaultDialog(title: message);
    Get.snackbar(
      message,
      message,
      titleText: const SizedBox.shrink(),
      // messageText: const SizedBox.shrink(),
      duration: duration,
      // NOTE : set toast position TOP so that it will be convenient for website also.
      snackPosition: snackPosition ?? SnackPosition.TOP,
      animationDuration: const Duration(seconds: 1),
      backgroundColor: backgroundColor ?? AppColors.toastBackGround,
      colorText: AppColors.textWhite,
    );
    */

    //------------------------
  }

  //------- Other methods ------------
}
