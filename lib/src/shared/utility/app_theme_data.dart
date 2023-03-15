import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_theme_data_text_style.dart';

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
