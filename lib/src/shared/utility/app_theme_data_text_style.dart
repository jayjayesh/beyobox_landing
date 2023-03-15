import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

// overLine - 10
// caption  = 12
// bodyText = 14, 16
// subTitle = 18, 20
// headline = 22, 26,

// This uses the MaterialBasedCupertinoThemeData mechs so that
// we have one base text theme for both Material and Cupertino widgets
TextTheme myBaseTextTheme = TextTheme(
  displayLarge: myHeadline1,
  displayMedium: myHeadline2,
  displaySmall: myHeadline3,
  headlineMedium: myHeadline4,
  headlineSmall: myHeadline5,
  titleMedium: mySubtitle1,
  titleSmall: mySubtitle2,
  bodyLarge: myBodytext1,
  bodyMedium: myBodytext2,
  bodySmall: myCaption,
  labelLarge: myButton,
  labelSmall: myOverline,
);

TextTheme myBaseTextThemeDark = TextTheme(
  displayLarge: myHeadline1.copyWith(color: AppColors.textWhite),
  displayMedium: myHeadline2.copyWith(color: AppColors.textWhite),
  displaySmall: myHeadline3.copyWith(color: AppColors.textWhite),
  headlineMedium: myHeadline4.copyWith(color: AppColors.textWhite),
  headlineSmall: myHeadline5.copyWith(color: AppColors.textWhite),
  titleMedium: mySubtitle1.copyWith(color: AppColors.textWhite),
  titleSmall: mySubtitle2.copyWith(color: AppColors.textWhite),
  bodyLarge: myBodytext1.copyWith(color: AppColors.textWhite),
  bodyMedium: myBodytext2.copyWith(color: AppColors.textWhite),
  bodySmall: myCaption.copyWith(color: AppColors.textWhite.withOpacity(0.6)),
  labelSmall: myOverline.copyWith(color: AppColors.textWhite),
  labelLarge: myButton.copyWith(color: AppColors.textWhite),
);

//-----------------------------------

TextStyle myHeadline1 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline1',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myHeadline2 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 26,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline2',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myHeadline3 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline3',
    overflow: TextOverflow.ellipsis,
  ),
);

// TextStyle myHeadline4 = GoogleFonts.poppins(
//   textStyle: const TextStyle(
//     // ignore: avoid_redundant_argument_values
//     inherit: true,
//     color: AppColors.textBlack,
//     backgroundColor: AppColors.transparent,
//     fontSize: 34,
//     fontWeight: FontWeight.w400,
//     fontStyle: FontStyle.normal,
//     letterSpacing: 0.25,
//     textBaseline: TextBaseline.alphabetic,
//     leadingDistribution: TextLeadingDistribution.even,
//     debugLabel: 'Headline4',
//     overflow: TextOverflow.ellipsis,
//   ),
// );

TextStyle myHeadline4 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 40,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline4',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myHeadline5 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 50,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline5',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle mySubtitle1 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle1',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle mySubtitle2 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle2',
    overflow: TextOverflow.ellipsis,
  ),
);
TextStyle myBodytext1 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext1',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myBodytext2 = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext2',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myCaption = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textCaption,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite.withOpacity(0.6) : AppColors.textGray,
    // color: Get.isDarkMode ? AppColors.textWhite.withOpacity(0.6) : AppColors.textGray,
    backgroundColor: AppColors.transparent,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.4,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Caption',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myButton = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textWhite,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 14, //16, //14,
    fontWeight: FontWeight.w400, //FontWeight.w500,
    fontStyle: FontStyle.normal,
    //letterSpacing: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Button',
    overflow: TextOverflow.ellipsis,
  ),
);

TextStyle myOverline = GoogleFonts.robotoMono(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: AppColors.textBlack,
    // color: AppUtility.systemThemeIsDark() ? AppColors.textWhite : AppColors.textBlack,
    // color: Get.isDarkMode ? AppColors.textWhite : AppColors.textBlack,
    backgroundColor: AppColors.transparent,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Overline',
    overflow: TextOverflow.ellipsis,
  ),
);
