import 'package:beyobox/src/shared/utility/app_colors.dart';
import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:flutter/material.dart';

class AppInputTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? keyboardType;
  const AppInputTextField({
    Key? key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.color = AppColors.textBlack,
    this.backgroundColor = AppColors.white,
    this.maxLines,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppConst.buttonCornerRedious),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          cursorColor: color,
          maxLines: maxLines,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            icon: icon == null
                ? null
                : Icon(
                    icon,
                    color: color,
                  ),
            hintText: hintText,
            hintStyle: TextStyle(color: color),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
