import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:full_boilerplate/app/ui/themes/my_color_schemes.dart';
import 'package:google_fonts/google_fonts.dart';

// Reference-1 : https://m2.material.io/design/typography/the-type-system.html#type-scale
// Referance-2 : https://api.flutter.dev/flutter/material/TextTheme-class.html?utm_source=pocket_saves
// Referance-3 : https://www.didierboelens.com/2020/05/material-textstyle-texttheme/
// Reference-4 : used this approch : https://medium.com/geekculture/one-text-theme-to-rule-them-all-8dd6a531a35a

////
// displayLarge: 96 (myHeadline1),
// displayMedium: 60 (myHeadline2),
// displaySmall: 48 (myHeadline3),
// headlineMedium: 34 (myHeadline4),
// headlineSmall: 24 (myHeadline5),
// titleLarge: 20 (myHeadline6),
// titleMedium: 16 (mySubtitle1),
// titleSmall: 14 (mySubtitle2),
// bodyLarge: 16 (myBodytext1),
// bodyMedium: 14 (myBodytext2),
// bodySmall: 12 (myCaption),
// labelLarge: 14  (myButton),
// labelSmall:10 (myOverline),

//
//
// This uses the MaterialBasedCupertinoThemeData mechs so that
// we have one base text theme for both Material and Cupertino widgets
TextTheme myBaseTextTheme = TextTheme(
  displayLarge: myHeadline1,
  displayMedium: myHeadline2,
  displaySmall: myHeadline3,
  headlineMedium: myHeadline4,
  headlineSmall: myHeadline5,
  titleLarge: myHeadline6,
  titleMedium: mySubtitle1,
  titleSmall: mySubtitle2,
  bodyLarge: myBodytext1,
  bodyMedium: myBodytext2,
  bodySmall: myCaption,
  labelLarge: myButton,
  labelSmall: myOverline,
);

TextStyle myHeadline1 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 96,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: -1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline2 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline2',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline3 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline3',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline4 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline4',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline5 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline5',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline6 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline6',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySubtitle1 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySubtitle2 = GoogleFonts.notoSerif(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle2',
    overflow: TextOverflow.fade,
  ),
);
TextStyle myBodytext1 = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myBodytext2 = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext2',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myCaption = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.4,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Caption',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myButton = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Button',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myOverline = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    // color: myColorSchemes.onSurface,
    // backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Overline',
    overflow: TextOverflow.fade,
  ),
);
