import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:PipoVigilante/src/helper/helpers.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';

class DefaultAppBar extends PreferredSize {
  final double height;
  final Gradient gradient;
  final Widget title, leading;
  final bool centerTitle;
  final List<Widget> actions;

  DefaultAppBar({
    this.leading,
    this.centerTitle = false,
    this.gradient = const LinearGradient(
      colors: [AppTheme.kPrimaryColor, AppTheme.kPrimaryColor],
    ),
    this.title,
    this.actions,
    this.height = 1.0,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height * height);
  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      centerTitle: centerTitle,
      leading: leading,
      gradient: gradient,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CirclePaint(offset: Offset(40.0, 10.0), radius: 50.0),
          ),
          CustomPaint(
            painter: CirclePaint(offset: Offset(-30, 20), radius: 50.0),
          ),
        ],
      ),
      title: title,
      actions: actions,
      elevation: 0,
    );
  }
}
