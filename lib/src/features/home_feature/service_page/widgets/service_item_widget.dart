import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:beyobox/src/shared/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
    this.padding,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final EdgeInsetsGeometry? padding;
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(child: AppImageWidget(height: 200, imageUrl: imageUrl)),
          20.heightBox,
          RichText(text: TextSpan(text: title, style: context.titleLarge)),
          20.heightBox,
          Expanded(child: RichText(text: TextSpan(text: description, style: context.bodyMedium))),
        ],
      ),
    );
  }
}