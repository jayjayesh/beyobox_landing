import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import '../utility/app_colors.dart';
import '../utility/app_const.dart';
import '../utility/app_utility.dart';

class AppButtonElevated extends StatelessWidget {
  const AppButtonElevated({
    super.key,
    required this.onPressed,
    this.height = 45,
    this.width = 150,
    this.cornerRadius = AppConst.buttonCornerRedious, //500, // by default rounded border radious
    this.borderRadius,
    this.fillColor,
    this.leadingWidget = const SizedBox(width: 1),
    this.trailingWidget = const SizedBox(width: 1),
    this.text = '',
    this.textColor = AppColors.textWhite,
    this.textStyle,
    this.showShadow = true,
    this.isEnable = true,
    this.isLoding = false,
    this.padding = const EdgeInsets.all(0),
  });
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double cornerRadius;
  final BorderRadius? borderRadius;
  final Color? fillColor;
  final Widget leadingWidget;
  final Widget trailingWidget;
  final String text;
  final Color textColor;
  final TextStyle? textStyle;
  final bool showShadow;
  final bool isEnable;
  final EdgeInsetsGeometry? padding;
  final bool isLoding;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: !isEnable || isLoding,
      child: Opacity(
        opacity: isEnable ? 1 : 0.6,
        child: Container(
          height: height,
          width: width,
          padding: padding,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(cornerRadius),
            color: fillColor ?? context.primaryColor,
            // image: fillColor == null
            //     ? DecorationImage(
            //         image: AssetImage(Assets.images.buttonBg.path),
            //         fit: BoxFit.cover,
            //       )
            //     : null,
            // gradient: fillColor == null
            //     ? const LinearGradient(
            //         colors: [
            //           AppColors.buttonGradient1,
            //           AppColors.buttonGradient2,
            //         ],
            //       )
            //     : null,
            // boxShadow: [
            //   if (showShadow)
            //     BoxShadow(
            //       color: fillColor ?? AppColors.buttonGradient2,
            //       offset: const Offset(0, 2),
            //       blurRadius: 1,
            //     ),
            // ],
          ),
          child: ElevatedButton(
            onPressed: () {
              AppUtility.hideGlobalKeyboard(context);
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              // primary: fillColor,
              //shape: const StadiumBorder(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              ),
              // NOTE: remove padding to get rid off : overflow warnings
              minimumSize: Size.zero, // Set this
              padding: EdgeInsets.zero, // and this
              elevation: 0,
            ),
            // style: ButtonStyle(
            //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //     RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(18),
            //       side: const BorderSide(
            //         color: Colors.teal,
            //         width: 2,
            //       ),
            //     ),
            //   ),
            // ),

            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leadingWidget,
                if (text.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: isLoding
                        ? CircularProgressIndicator(
                            color: textColor,
                            strokeWidth: 1.5,
                          )
                        : Text(
                            text,
                            style: textStyle ??
                                Theme.of(context).textTheme.labelLarge?.copyWith(
                                      color: textColor,
                                    ),
                          ),
                  ),
                trailingWidget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
