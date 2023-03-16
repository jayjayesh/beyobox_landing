import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/shared/widgets/app_button_elevated.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    super.key,
    this.padding,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onPresssMoreButton,
  });

  final EdgeInsetsGeometry? padding;
  final String title;
  final String description;
  final String imageUrl;
  final Function() onPresssMoreButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: padding,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text.rich(TextSpan(text: title, style: context.titleLarge)),
              20.heightBox,
              AppImageWidget(height: 100, imageUrl: imageUrl),
              20.heightBox,
              RichText(text: TextSpan(text: description, style: context.bodyMedium)),
              20.heightBox,
              //const Spacer(),
              Row(
                children: [
                  AppButtonElevated(
                    text: AppLocalizations.of(context)!.homeCardWidgetButtonMore,
                    fillColor: context.primaryColor,
                    onPressed: onPresssMoreButton,
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
