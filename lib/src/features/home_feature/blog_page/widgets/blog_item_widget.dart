import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BlogItemWidget extends StatelessWidget {
  const BlogItemWidget({
    super.key,
    this.padding = EdgeInsets.zero,
    required this.date,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onPresssReadMoreButton,
  });

  final EdgeInsetsGeometry padding;
  final String date;
  final String title;
  final String description;
  final String imageUrl;
  final Function() onPresssReadMoreButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImageWidget(height: 100, width: double.infinity, imageUrl: imageUrl),
              20.heightBox,
              Text(date, style: context.bodyMedium),
              20.heightBox,
              RichText(text: TextSpan(text: title, style: context.titleLarge)),
              20.heightBox,
              RichText(text: TextSpan(text: description, style: context.bodyMedium)),
              20.heightBox,
              Row(
                children: [
                  AppButtonElevated(
                    text: AppLocalizations.of(context)!.homeCardWidgetButtonMore,
                    fillColor: context.primaryColor,
                    onPressed: onPresssReadMoreButton,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
