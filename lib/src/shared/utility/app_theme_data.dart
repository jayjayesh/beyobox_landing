import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_theme_data_text_style.dart';

// ref : used this approch : https://medium.com/geekculture/one-text-theme-to-rule-them-all-8dd6a531a35a

ThemeData lightTheme = ThemeData.from(
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    background: AppColors.scaffoldBackground,
  ),
  textTheme: myBaseTextTheme,
);
ThemeData darkTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryDark,
    background: AppColors.scaffoldBackgroundDark,
  ),
  textTheme: myBaseTextThemeDark,
);

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------

ThemeData lightTheme_old = ThemeData.from(colorScheme: const ColorScheme.light(primary: AppColors.primary)).copyWith(
  cardTheme: myMaterialCardTheme,
  textTheme: myBaseTextTheme,
  buttonTheme: myMaterialButtonThemeData,
  // bannerTheme: myMaterialBannerThemeData,
  // bottomAppBarTheme: myMaterialBottomAppbarTheme,
  // ------ FPW? --------
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  iconTheme: myMaterialIconThemeData,
  //floatingActionButtonTheme: myMaterialFloatingActionBarThemeData,
  // ------ FPW? --------
  appBarTheme: myMaterialAppBarTheme,
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  // dataTableTheme: myMaterialDataTableThemeData,
  // ------ FPW? --------
  //dialogTheme: myMaterialDialogTheme,
  dividerTheme: myMaterialDividerThemeData,
  elevatedButtonTheme: myMaterialElevatedButtonThemeData,
  // navigationRailTheme: myMaterialNavigationRailThemeData,
  // outlinedButtonTheme: myMaterialOutlineButtonThemeData,
  // pageTransitionsTheme: myMaterialPageTransitionTheme,
  popupMenuTheme: myMaterialPopupMenuThemeData,
  //radioTheme: myMaterialRadioThemeData,
  //scrollbarTheme: myMaterialScrollbarThemeData,
  // // FPW provided so we need to do a MaterialSliderData and CupertinoSliderData in the
  // // Material and Cupertino builder blocks of the PlatformSlider instead
  // sliderTheme: myMaterialSliderThemeData,
  //snackBarTheme: myMaterialSnackbarThemeData,
  //// FPW provided so we need to do a MaterialSwitchData and a CupertinoSwitchData instead which
  //// gets used in the PlatformSwitch material and cupertino builder blocks
  ////switchTheme: myMaterialSwitchThemeData,
  tabBarTheme: myMaterialTabBarTheme,
  //textButtonTheme: myMaterialTextButtonThemeData,
  textSelectionTheme: myMaterialTextSelectionThemeData,
  // timePickerTheme: myMaterialTimePickerThemeData,
  // toggleButtonsTheme: myMaterialToggleButtonThemeData,
  // tooltipTheme: myMaterialTooltipThemeData,
);

ThemeData darkTheme_old = ThemeData.from(colorScheme: const ColorScheme.dark(primary: AppColors.primary)).copyWith(
  cardTheme: myMaterialCardTheme,
  textTheme: myBaseTextThemeDark,
  buttonTheme: myMaterialButtonThemeData,
  //bannerTheme: myMaterialBannerThemeData,
  //bottomAppBarTheme: myMaterialBottomAppbarTheme,
  //// FPW?
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  iconTheme: myMaterialIconThemeData,
  //floatingActionButtonTheme: myMaterialFloatingActionBarThemeData,
  //// FPW?
  appBarTheme: myMaterialAppBarTheme,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
  //dataTableTheme: myMaterialDataTableThemeData,
  //// FPW?
  //dialogTheme: myMaterialDialogTheme,
  dividerTheme: myMaterialDividerThemeData,
  elevatedButtonTheme: myMaterialElevatedButtonThemeData,
  //navigationRailTheme: myMaterialNavigationRailThemeData,
  //outlinedButtonTheme: myMaterialOutlineButtonThemeData,
  //pageTransitionsTheme: myMaterialPageTransitionTheme,
  popupMenuTheme: myMaterialPopupMenuThemeData,
  //radioTheme: myMaterialRadioThemeData,
  //scrollbarTheme: myMaterialScrollbarThemeData,
  //// FPW provided so we need to do a MaterialSliderData and CupertinoSliderData in the
  //// Material and Cupertino builder blocks of the PlatformSlider instead
  ////sliderTheme: myMaterialSliderThemeData,
  //snackBarTheme: myMaterialSnackbarThemeData,
  //// FPW provided so we need to do a MaterialSwitchData and a CupertinoSwitchData instead which
  //// gets used in the PlatformSwitch material and cupertino builder blocks
  ////switchTheme: myMaterialSwitchThemeData,
  tabBarTheme: myMaterialTabBarTheme,
  //textButtonTheme: myMaterialTextButtonThemeData,
  textSelectionTheme: myMaterialTextSelectionThemeData,
  //timePickerTheme: myMaterialTimePickerThemeData,
  //toggleButtonsTheme: myMaterialToggleButtonThemeData,
  //tooltipTheme: myMaterialTooltipThemeData,
);

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------

/*
ThemeData lightTheme = ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
  appBarTheme: AppBarTheme(
    color: AppColors.scaffoldBackground,
    iconTheme: myMaterialIconThemeData,
  ),
  textTheme: myBaseTextTheme,
  primaryColor: AppColors.primary,
  // accentColor: AppColors.accent,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.accent, // Your accent color
  ),
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  tabBarTheme: myMaterialTabBarTheme,
  iconTheme: myMaterialIconThemeData,
  dividerTheme: myMaterialDividerThemeData,
  checkboxTheme: myMaterialCheckboxThemeData,
  popupMenuTheme: myMaterialPopupMenuThemeData,
  bottomSheetTheme: myMaterialBottomSheetThemeData,
  // for others(Android, Fuchsia)
  textSelectionTheme: myMaterialTextSelectionThemeData,
  progressIndicatorTheme: myMaterialProgressThemeData,
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  highlightColor: AppColors.scrollEndHighlightColor,
  sliderTheme: myMaterialSliderThemeData,
);

ThemeData darkTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark(
    // NOTE : this color is used to change  (copy, past) toolbar color in chat bubble for selectable text
    surface: AppColors.white,
  ),
).copyWith(
  appBarTheme: const AppBarTheme(color: AppColors.primaryDark),
  textTheme: myBaseTextThemeDark,
  primaryColor: AppColors.primaryDark,
  // accentColor: AppColors.accent,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.accentDark, // Your accent color
  ),
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
  tabBarTheme: myMaterialTabBarTheme.copyWith(
    labelColor: AppColors.primaryDark,
    unselectedLabelColor: AppColors.primaryDark.withOpacity(0.6),
  ),
  iconTheme: myMaterialIconThemeData.copyWith(color: AppColors.iconsColorDark),
  dividerTheme: myMaterialDividerThemeData.copyWith(color: AppColors.dividerDark),

  checkboxTheme: myMaterialCheckboxThemeData.copyWith(
    side: const BorderSide(
      color: AppColors.checkBoxBorderDark,
    ),
  ),
  popupMenuTheme: myMaterialPopupMenuThemeData,
  bottomSheetTheme: myMaterialBottomSheetThemeData.copyWith(
    backgroundColor: AppColors.black,
  ),
  // for others(Android, Fuchsia)
  textSelectionTheme: myMaterialTextSelectionThemeData,
  progressIndicatorTheme: myMaterialProgressThemeData,
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  highlightColor: AppColors.chatUserBackground,
  sliderTheme: myMaterialSliderThemeData,
);
*/

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------

// define myAppBarTheme
AppBarTheme myMaterialAppBarTheme = AppBarTheme(
  color: AppColors.scaffoldBackground,
  iconTheme: myMaterialIconThemeData,
);

// define button theme
ButtonThemeData myMaterialButtonThemeData = const ButtonThemeData(
  buttonColor: AppColors.primary,
  shape: RoundedRectangleBorder(),
  textTheme: ButtonTextTheme.accent,
);

// define elevatedButtonTheme
ElevatedButtonThemeData myMaterialElevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary, // background (button) color
    foregroundColor: Colors.white, // foreground (text) color
  ),
);

// define card theme
CardTheme myMaterialCardTheme = const CardTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
);

// define myTabBarTheme
TabBarTheme myMaterialTabBarTheme = TabBarTheme(
  labelColor: AppColors.primary,
  unselectedLabelColor: AppColors.primary.withOpacity(0.6),
  indicatorSize: TabBarIndicatorSize.label,
);

IconThemeData myMaterialIconThemeData = const IconThemeData(
  color: AppColors.iconsColor,
);

// define myMaterialDividerThemeData
DividerThemeData myMaterialDividerThemeData = const DividerThemeData(
  color: AppColors.divider,
  thickness: 1,
);

// define checkbox ThemeData
CheckboxThemeData myMaterialCheckboxThemeData = CheckboxThemeData(
  // define fillcolor  materialstateproperty
  fillColor: MaterialStateProperty.all(AppColors.primary),
  checkColor: MaterialStateProperty.all(AppColors.checkBoxCheckMark),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  side: const BorderSide(
    color: AppColors.checkBoxBorder,
    // width: 0.5,
  ),
);

PopupMenuThemeData myMaterialPopupMenuThemeData = const PopupMenuThemeData(
  color: AppColors.white,
);

BottomSheetThemeData myMaterialBottomSheetThemeData = const BottomSheetThemeData(
  backgroundColor: AppColors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    ),
  ),
);

TextSelectionThemeData myMaterialTextSelectionThemeData = const TextSelectionThemeData(
  cursorColor: AppColors.textFieldFocusedBorder,
);

// define progressbar ThemeData
ProgressIndicatorThemeData myMaterialProgressThemeData = const ProgressIndicatorThemeData(
  color: AppColors.tabContainerBg,
);

// define bottomNavigation ThemeData
BottomNavigationBarThemeData myMaterialBottomNavigationBarThemeData = const BottomNavigationBarThemeData(
  backgroundColor: AppColors.transparent,
  selectedIconTheme: IconThemeData(
    color: AppColors.primary,
    size: 26,
  ),
  unselectedIconTheme: IconThemeData(
    color: AppColors.inActiveTab,
    size: 26,
  ),
  showSelectedLabels: false,
  showUnselectedLabels: false,
  selectedItemColor: AppColors.primary,
  unselectedItemColor: AppColors.inActiveTab,
);

// Slider Theme

SliderThemeData myMaterialSliderThemeData = const SliderThemeData(
  thumbColor: AppColors.white,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 28),
  trackShape: RectangularSliderTrackShape(),
  trackHeight: 4,
);
