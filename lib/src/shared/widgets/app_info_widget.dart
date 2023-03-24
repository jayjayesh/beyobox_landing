import 'dart:ui';

import 'package:beyobox/src/shared/utility/app_const.dart';
import 'package:flutter/material.dart';

class AppInfoWidget extends StatelessWidget {
  const AppInfoWidget({super.key, required this.description, this.child});

  final String description;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      // padding: EdgeInsets.zero,
      // color: Theme.of(context).backgroundColor,
      offset: const Offset(
        0,
        AppConst.threeDotIconHeight + 2,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            AppConst.defaultCornerRedious,
          ),
          bottomRight: Radius.circular(
            AppConst.defaultCornerRedious,
          ),
          topLeft: Radius.circular(
            AppConst.defaultCornerRedious,
          ),
          topRight: Radius.circular(
            AppConst.defaultCornerRedious,
          ),
        ),
      ),
      onSelected: (value) {
        if (value != null) {
          //_onTapMenuItem(value as int);
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          // NOTE : to disable click event on description text
          enabled: false,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          //value: POPUP_MENU_BUTTON.chatBubbleWidgetDelete.index, // 2,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1.5,
              sigmaY: 1.5,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: RichText(
                // NOTE : @Saurabh sir : the text in the information box to be aligned correctly.
                // NOTE : TextAlign.justify : will force to fill width which leave uneven space between words hence removed
                // textAlign: TextAlign.justify,
                text: TextSpan(
                  // text: (messageText + messageText + messageText).truncateWithEllipsis(90),
                  text: description.isNotEmpty ? description : 'No Description Available',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
        )
      ],
      child: child ??
          Icon(
            Icons.info,
            size: 20,
            color: Theme.of(context).iconTheme.color?.withOpacity(0.3),
          ),
    );
  }
}
