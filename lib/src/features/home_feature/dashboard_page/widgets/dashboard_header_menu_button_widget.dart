import 'package:beyobox/src/features/home_feature/dashboard_page/widgets/dashboard_header_tab_bar_items.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:flutter/material.dart';

class DashboardHeaderMenuButtonWidget extends StatefulWidget {
  const DashboardHeaderMenuButtonWidget({
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
  _DashboardHeaderMenuButtonWidgetState createState() => _DashboardHeaderMenuButtonWidgetState();
}

class _DashboardHeaderMenuButtonWidgetState extends State<DashboardHeaderMenuButtonWidget>
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
        minWidth: 160,
        maxWidth: 160,
      ),
      itemBuilder: (context) {
        return <PopupMenuItem>[
          const PopupMenuItem(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Center(child: DashboardHeaderTabBarItemWidget()),
            ),
          ),
        ];
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: AnimatedIcon(
          size: widget.height,
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
      ),
    );
  }
}
