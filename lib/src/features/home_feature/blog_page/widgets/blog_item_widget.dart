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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImageWidget(height: 200, width: double.infinity, imageUrl: imageUrl),
              10.heightBox,
              Text(date, style: context.bodyMedium),
              20.heightBox,
              RichText(text: TextSpan(text: title, style: context.titleLarge)),
              20.heightBox,
              RichText(
                // NOTE : if used (TextOverflow.fade) this widget breaks in mobile phones
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
                text: TextSpan(
                  style: context.bodyMedium,
                  children: [
                    TextSpan(
                      text: description,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 5),
                child: Row(
                  children: [
                    AppButtonElevated(
                      text: AppLocalizations.of(context)!.homeCardWidgetButtonMore,
                      onPressed: onPresssReadMoreButton,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
