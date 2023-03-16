import 'package:flutter/material.dart';

class AppColors {
  // NOTE: AppRegex._(); : It is to make the class non-instantiable.
  // you don't want AppRegex to ever be accidentally instantiated by constructor
  AppColors._();
  static const Color transparent = Colors.transparent;
  static const Color primary = Color.fromARGB(255, 0, 125, 250);
  static const Color primaryDark = Color(0xFF020015);
  static const Color secondry = primary;
  static const Color secondryDark = Color(0xFF020015);
  static const Color accent = primary;
  static const Color accentDark = Color(0xFF020015);
  static const Color purple = Color(0xff754FFE);
  static const Color tabContainerBg = Color(0xff020015);
  static const Color redSliderColor = Color(0xffFF6864);
  static const Color greenSliderColor = Color(0xff6DC48F);
  static const Color yellowColor = Color(0xffFFC107);
  static const Color profileYellow = Color(0xffFFD800);
  static const Color profileBlack = Color(0xff1E1E1E);
  static const Color blueColor = Color(0xff0D6EFD);
  static const Color goldenColor = Color.fromARGB(255, 191, 155, 11);
  static const Color blueTickColor = Color(0xff00acee);
  static const Color darkBlueColor = Color(0xff040027);
  static const Color green = Color(0xff30B63D);
  static const Color darkRed = Color(0xffE42F2F);
  //static Color chatUserBackgroundLight = const Color(0xffE3E5E8); // Colors.grey.withOpacity(0.3);
  static const Color chatTabBackground = Color(0xff7400FF);
  static const Color chatCount = Color(0xffFF3939);
  static const Color chatSelectedClubBorderColor = Color(0xff39FF14);
  static const Color chatBubbleBG = Color(0xffDCDCDC);
  static const Color chatBubbleBGForMediaFile = Color(0xffD7D7D7); //Color(0xff754FFE); // Color(0xCC085F4D);
  static const Color chatBubbleHighlightBG = Color(0x2613A1E3);
  static const Color chatTopMsg = Color(0xff13A1E3);
  static const Color chatSecondMsgFirst = Color(0xffDCDCDC);
  //Color(0xffEB9C19); // Color(0xff9CB6FF);
  static const Color chatSecondMsgSecond = Color(0xffDCDCDC);
  //Color(0xffD33F79); // Color(0xff9CB6FF);
  static const Color chatSecondMsgThird = Color(0xffDCDCDC);
  //Color(0xffA76DF5); // Color(0xffC8FFD7);
  static const Color chatReactionBackground = Color(0xff161240);
  static const Color chatBubbleArrow = Color(0xff6187EC);
  static const Color angryIcon = Color(0xffe24b4b);
  static const Color lightBlack = Color(0xff2E2E2E);
  static const Color deleteIcon = redSliderColor;
  static const Color highlightBackground = Color(0xFF4880B7);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFE74C5B);
  static const Color scaffoldBackground = Color(0xFFF5F5F5); // Color(0xFFFFFFFF);
  static const Color scaffoldBackgroundDark = Color(0xFF020015);
  static const Color loadingIndicatorBackgroundColor = Color(0xFF020015);
  static const Color inActiveTab = Color(0xff868686);
  static const Color sideMenuBackgroundDark = Color(0xff1D1D1D);
  static const Color sideMenuIcon = Color(0xffD7D7D7);
  // static const Color scaffoldBackgroundDark = Color(0xFF110825);
  static const Color outlineButtonBorder = Color(0xFFFFFFFF);
  static const Color onBoardingPageIndicatorDefault = Color(0x334880B7);
  static const Color onBoardingPageIndicatorActive = Color(0xFF4880B7);
  static const Color expandableTextWidgetBackGround = Color(0xFFD1ECF1);

  static const Color starRatting01 = Color(0xFF890D09);
  static const Color starRatting23 = Color(0xFFBB1313);
  static const Color starRatting45 = Color(0xFFFD9A27);
  static const Color starRatting67 = Color(0xFF18A91B);
  static const Color starRatting89 = Color(0xFF0D7810);
  static const Color starRattingYellow = Color(0xFFF7C64C);
  static const Color starRattingGray = Color(0xFFDFDFDF);

  static const Color textPrimary = primary; //Color(0xFF4880B7);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textDarkBlack = Color(0xFF000000);
  static const Color textBlack = Color(0xFF414141); //Color(0xFF232930);
  static const Color textGray = Color(0xFF919497);
  static const Color textPlaceholder = Color(0x80414141); //Color(0xFFCCCCCC); // #
  static const Color textPlaceholderDark = Color(0x80FFFFFF); //Color(0xFFCCCCCC); // #
  static const Color textCaption = Color(0xB3414141); //Color(0xFFCCCCCC); // #
  static const Color textRed = redSliderColor; // Color(0xFFE74C5B);
  static const Color textGreen = greenSliderColor; //Color(0xFF98CA46);
  static const Color textLandingSkipButtonGray = Color(0xFFCCCCCC);
  static const Color textFieldBorder = Color(0xFFCCCCCC);
  static const Color textFieldFocusedBorder = Color(0xff754FFE);
  static const Color textFieldErrorBorder = Color(0xFFE74C5B);
  static const Color textClickableLinks = Color(0x80FFFFFF); // Color(0xB3414141);
  static const Color textDefaultCreditCardInfo = Color(0xFF0C5460);

  // Button Color
  static const Color buttonPrimary = primary; //Color(0xFF5E98D2);
  static const Color buttonGray = Color(0xff2E2E2E);
  static const Color buttonGoogle = Color(0xFFFE584B);
  static const Color buttonFacebook = Color(0xFF3E93FF);
  static const Color buttonNotificationDecline = Color(0xFF9C9C9C);
  static const Color buttonBlockUser = Color(0xFFFE584B);
  static const Color buttonRateStreategyFillColor = Color(0xff2E2E2E);

  // Gradient Colors
  static const Color buttonGradient1 = Color.fromARGB(255, 175, 0, 255);
  static const Color buttonGradient2 = Color.fromARGB(255, 116, 0, 255);
  static const Color reelPostGradientStart = Colors.transparent;
  static Color reelPostGradientEnd = Colors.black.withAlpha(255); //Colors.black;
  static const influencerGradient1 = Color(0xffDB3871);
  static const influencerGradient2 = Color(0xff8D0A97);

  static const Color chatGradient001 = Color(0xff3D6CD8);
  static const Color chatGradient002 = Color(0xff545BEC);
  static const Color chatGradient011 = Color(0xff3D6CD8);
  static const Color chatGradient012 = Color(0xff545BEC);
  static const Color chatGradient021 = Color(0xff3D6CD8);
  static const Color chatGradient022 = Color(0xff545BEC);
  static const Color chatGradient031 = Color(0xff3D6CD8);
  static const Color chatGradient032 = Color(0xff545BEC);
  static const Color chatGradient041 = Color(0xff3D6CD8);
  static const Color chatGradient042 = Color(0xffA954EC);
  static const Color chatGradient051 = Color(0xff813DD8);
  static const Color chatGradient052 = Color(0xffA954EC);
  static const Color chatGradient061 = Color(0xff8A3DD8);
  static const Color chatGradient062 = Color(0xffA954EC);
  static const Color chatGradient071 = Color(0xff8A3DD8);
  static const Color chatGradient072 = Color(0xffA954EC);
  static const Color chatGradient081 = Color(0xff8A3DD8);
  static const Color chatGradient082 = Color(0xffA954EC);
  static const Color chatGradient091 = Color(0xffA954EC);
  static const Color chatGradient092 = Color(0xffffd1dc);

/*
  static const Color chatGradient001 = Color(0xff3D6CD8); //Color(0xff3D6CD8);
  static const Color chatGradient002 = Color(0xff545BEC); //Color(0xff545BEC);
  static const Color chatGradient011 = Color(0xff3D6CD8); //Color(0xff3D6CD8);
  static const Color chatGradient012 = Color(0xff545BEC); //Color(0xff7254EC);
  static const Color chatGradient021 = Color(0xff3D6CD8); //Color(0xff3D6CD8);
  static const Color chatGradient022 = Color(0xffA954EC); //Color(0xffA954EC);
  static const Color chatGradient031 = Color(0xff813DD8); //Color(0xff813DD8);
  static const Color chatGradient032 = Color(0xffA954EC); //Color(0xffA954EC);
  static const Color chatGradient041 = Color(0xff8A3DD8); //Color(0xff8A3DD8);
  static const Color chatGradient042 = Color(0xffA954EC); //Color(0xffEC6F54);
  static const Color chatGradient051 = Color(0xffA954EC); //Color(0xffEC6F54);
  static const Color chatGradient052 = Color(0xff3D6CD8); //Color(0xffECB854);
  // static const Color chatGradient061 = Color(0xff3D6CD8); //Color(0xffECB854);
  // static const Color chatGradient062 = Color(0xff7254EC); //Color(0xff54B5EC);
  // static const Color chatGradient071 = Color(0xff3D6CD8); //Color(0xff54B5EC);
  // static const Color chatGradient072 = Color(0xff545BEC); //Color(0xff5475EC);
  // static const Color chatGradient081 = Color(0xff3D6CD8); //Color(0xff5475EC);
  // static const Color chatGradient082 = Color(0xff3D6CD8); //Color(0xff3D6CD8);
  // static const Color chatGradient091 = Color(0xff3D6CD8); //Color(0xff3D6CD8);
  // static const Color chatGradient092 = Color(0xff7254EC); //Color(0xff7254EC);
*/

  // divider color
  static const Color divider = Color(0xFF232930);
  static const Color dividerDark = Color(0x33D8D8D8);
  static const Color darkGrey = Color.fromARGB(29, 164, 152, 152);
  static const Color dividerColor = Color(0xffD9D9D9);
  static const Color dividerGrey = Color(0xffDCDCDC);
  static const Color dividerSettings = Color(0xffDCDCDC);
  static const Color dividerSettingsDark = Color(0x80ffffff);
  static const Color lightestGrey = Color.fromARGB(255, 233, 233, 233);
  static const Color darkestGrey = Color.fromARGB(255, 33, 33, 33);

  static const Color checkBoxBorder = Color(0x80414141); //Color(0xFFD8D8D8);
  static const Color checkBoxBorderDark = Color(0x80FFFFFF); //Color(0xFFD8D8D8);
  static const Color favoriteBorder = Color(0xFF919497);
  static const Color iconsColor = Color(0xFF232930); // used for svg icons color
  static const Color iconsColorDark = Color(0xFFFFFFFF); // used for svg icons color
  static const Color iconsPostsUpVoteSelected = purple; // used for svg icons color
  static const Color iconsPostsUpVoteUnSelected = Color(0x99FFFFFF); // used for svg icons color
  static const Color checkBoxCheckMark = Color(0xFFFFFFFF);
  static const Color checkBoxGreen = Color(0xFF98CA46);
  static Color checkBoxDisabledWithCheckMark = primary.withOpacity(0.6);
  static const Color segmentbackground = Color(0xFFF2F7FE);

  // Order status color
  static const Color orderStatusPending = Color(0xFF5E98D2);
  static const Color orderStatusCompleted = Color(0xFFFFAD27);
  static const Color orderStatusCancelled = Color(0xFFFE584B);

  // Chat Online status color
  static const Color onlineStatusOnline = Color(0xFF4DD966);
  static const Color onlineStatusOffline = Colors.transparent;
  static const Color onlineStatusBusy = Color(0xFFFFAD27);
  static const Color chatHighlightTextColor = Color(0xFF53D86F);
  static const Color badgeColor = Color(0xFFEA4335);
  static const Color chatBubbleBackGroundIsMe = Color(0xFF5E98D2);
  static const Color chatBubbleBackGroundIsMeDark = Color(0xFF215A95);
  static const Color chatBubbleBackGroundGray = Color(0xFFF2F2F2);
  static const Color chatBubbleBackGroundGrayDark = Color.fromARGB(255, 145, 144, 144); // Color(0xFFCCCCCC);

  //
  static const Color becomePetProviderWidgetThemeColor = Color(0xFF4EB2E5);
  static const Color onBoardEditProfileWidget3ThemeColor = Color(0xFFFFDA7E);

  //
  static const Color prefixCurrencyContainerColor = Color(0xFFE9ECEF);

  //
  static const Color petTypeBgPink = Color(0xFFFBD9D6);
  static const Color petTypeBgLightBlue = Color(0xFFEDF2F8);

  //  Slider Colors
  static const Color sliderBackground1 = Color(0xff8D8D8D);
  static const Color sliderBackground2 = Color(0xffF66854);
  static const Color sliderBackground3 = Color(0xffF09F2B);
  static const Color sliderBackground4 = Color(0xff3088FE);
  static const Color sliderBackground5 = Color(0xff43D1CA);
  static const Color sliderBackground6 = Color(0xff3CC97A);

  // BackGround Colors
  static Color websiteBackGround = const Color(0xFFC8C8C8); //Color(0xFFe6e6e6);
  static Color websiteDarkBackGround = const Color(0xFFfafafa);
  static Color billingDetailBackGround = primary.withOpacity(0.1);
  static Color defaultCardInfoBackGround = const Color(0xFFD1ECF1);
  static const Color toastBackGround = Color(0xffDCDCDC);
  static const Color toastBackGroundRed = redSliderColor;
  static const Color toastBackGroundGreen = greenSliderColor;
  static const Color scrollEndHighlightColor = Color(0xFFE3E5E8);
  static Color chatUserBackground = const Color(0xFFE3E5E8);
  static Color chatUserBackgroundDark = const Color(0xFF100D20);
  static Color searchBarFillColor = const Color(0xFFF8F8F8); // AppColors.black.withOpacity(.05);
  static Color searchBarFillColorDark = const Color(0xFF2A2A2A);

  // Shimmer color
  static Color shimmerBaseColor = Colors.grey[300]!;
  static Color shimmerHighlightColor = Colors.grey[050]!;

  static Color shimmerHighlightDark = AppColors.white.withOpacity(0.01);
  static Color shimmerHighlightLight = Colors.grey[50]!;

  // Influencer profile carousel image indicarot color
  static Color influencerCarouselImageColor = Colors.black;
  static Color influencerCarouselImageColorDark = Colors.white;

  // Settings dark theme switch color
  static const Color switchActiveColor = AppColors.greenSliderColor;
  static const Color switchInactiveColor = Color(0x66DFDFDF);
  static const Color switchInactiveColorDark = Color(0x66FFFFFF);
  static const Color switchThumbColor = AppColors.white;

  // dashboard multibagger stock chip color
  static const Color stockChipColorDefault = Color(0xFF88AAFB);
  static const Color multibaggerStockChipColor0 = Color(0xFF88AAFB);
  static const Color multibaggerStockChipColor1 = Color(0xFFfe82a5);
  static const Color multibaggerStockChipColor2 = Color(0xFF69c482);

  // Order status color
  static const Color recommendationsColorBlue = Color(0xFF88AAFB);
  static const Color recommendationsColorGreen = Color(0xFF0FD59E);
  static const Color recommendationsColorCyan = Color(0xFFFD8188);
  static const Color recommendationsColorGray = Color(0xFF3D3E36);
  static const Color recommendationsAvtarColorGreen = Color(0xFF273900);

  static Color dashboardMultibaggerStockChipColorForIndex(int index) {
    final tempIndex = index % 3;
    var chipColor = AppColors.white.withOpacity(0.5);

    ///
    switch (tempIndex) {
      case 0:
        chipColor = multibaggerStockChipColor0;
        break;

      case 1:
        chipColor = multibaggerStockChipColor1;
        break;

      case 2:
        chipColor = multibaggerStockChipColor2;
        break;
    }

    return chipColor;
  }

  static Color getRecommendationsBgColor(String callStatus, String tradeType) {
    if (callStatus == 'open') {
      return (tradeType == 'buy') ? recommendationsColorBlue : recommendationsColorCyan;
    } else {
      return recommendationsColorGray;
    }
  }

  static Color getRecommendationsTextColor(String callStatus) {
    return (callStatus != 'open') ? textWhite : textBlack;
  }

  static Color getStockChipColor({required String vCallStatus, required String vTradeType}) {
    return vCallStatus != 'open'
        ? AppColors.recommendationsColorGray
        : (vTradeType == 'sell' ? AppColors.recommendationsColorCyan : AppColors.recommendationsColorGreen);
  }

  static LinearGradient chatBubbleGradientColorForIndex(int index, int arrLen) {
    //final _tempIndex = index % 9;
    final tempIndex = index % 10;
    var linearGradientColor1 = AppColors.white;
    var linearGradientColor2 = AppColors.white;
    const startColor = chatGradient001;
    const endColor = chatGradient091;

    //var gradientColor = startColor + ((endColor - startColor) / length) * index;
    switch (tempIndex) {
      case 0:
        linearGradientColor1 = chatGradient001;
        linearGradientColor2 = chatGradient002;
        break;

      case 1:
        linearGradientColor1 = chatGradient011;
        linearGradientColor2 = chatGradient012;
        break;

      case 2:
        linearGradientColor1 = chatGradient021;
        linearGradientColor2 = chatGradient022;
        break;

      case 3:
        linearGradientColor1 = chatGradient031;
        linearGradientColor2 = chatGradient032;
        break;

      case 4:
        linearGradientColor1 = chatGradient041;
        linearGradientColor2 = chatGradient042;
        break;

      case 5:
        linearGradientColor1 = chatGradient051;
        linearGradientColor2 = chatGradient052;
        break;

      case 6:
        linearGradientColor1 = chatGradient061;
        linearGradientColor2 = chatGradient062;
        break;

      case 7:
        linearGradientColor1 = chatGradient071;
        linearGradientColor2 = chatGradient072;
        break;

      case 8:
        linearGradientColor1 = chatGradient081;
        linearGradientColor2 = chatGradient082;
        break;

      case 9:
        linearGradientColor1 = chatGradient091;
        linearGradientColor2 = chatGradient001;
        break;

      default:
    }

    List<Color> generateColors(int index, int arrLength) {
      const startColorInt = 61;
      const endColorInt = 169;
      var offset = 1;
      const range = endColorInt - startColorInt;

      if ((range / arrLength).ceil() > 6) {
        offset = (range / arrLength).ceil();
      } else {
        offset = 6;
      }
      final startRed = startColorInt + ((offset * index) % range); //(offset * index);
      // ignore: unnecessary_parenthesis
      final endRed = startColorInt + ((((offset + 1) * index)) % range);
      // ignore: avoid_print
      // ignore: omit_local_variable_types
      final Color startVal = Color.fromARGB(255, startRed, 84, 236);
      //ColornexVal = startVal.red(39); // 16777215.
      final endVal = Color.fromARGB(255, endRed, 84, 236);
      return [startVal, endVal];
    }

    ///
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: generateColors(index, arrLen),
    );
  }
}

/*

Hex Opacity Values
--------------------------------
100% — FF
95% — F2
90% — E6
85% — D9
80% — CC
75% — BF
70% — B3
65% — A6
60% — 99
55% — 8C
50% — 80
45% — 73
40% — 66
35% — 59
30% — 4D
25% — 40
20% — 33
15% — 26
10% — 1A
5% — 0D
0% — 00

*/
