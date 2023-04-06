import 'package:beyobox/src/features/home_feature/contact_us_page/widgets/contact_us_form_widget.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:flutter/material.dart';

class DashboardContactUsButtonWidget extends StatefulWidget {
  const DashboardContactUsButtonWidget({
    super.key,
    this.height = 50,
    this.width = 50,
    this.padding,
    this.borderRadius,
    this.fillColor,
  });

  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Color? fillColor;

  @override
  _DashboardContactUsButtonWidgetState createState() => _DashboardContactUsButtonWidgetState();
}

class _DashboardContactUsButtonWidgetState extends State<DashboardContactUsButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleIcon() {
    if (_isPlaying) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onOpened: () {
        _toggleIcon();
        //widget.onPressed.call();
      },
      onCanceled: () {
        _toggleIcon();
      },
      onSelected: (value) {
        _toggleIcon();
      },
      offset: Offset(
        0,
        widget.height.orDefault + 20,
      ),
      constraints: const BoxConstraints(
        minWidth: 360,
        maxWidth: 360,
      ),
      itemBuilder: (context) {
        return <PopupMenuItem>[
          const PopupMenuItem(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Center(child: ContactUsFormWidget()),
            ),
          ),
        ];
      },
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Icon(
          Icons.message_outlined,
        ),
      ),
    );
  }
}
