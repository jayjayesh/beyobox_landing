import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({
    super.key,
    this.padding,
    required this.title,
    required this.description,
  });

  final EdgeInsetsGeometry? padding;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RichText(text: TextSpan(text: title, style: context.headlineSmall)),
          20.heightBox,
          Expanded(child: RichText(text: TextSpan(text: description, style: context.bodyMedium))),
        ],
      ),
    );
  }
}
