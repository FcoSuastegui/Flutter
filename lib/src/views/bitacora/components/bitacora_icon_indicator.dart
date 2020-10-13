import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class BitacoraIconIndicator extends StatelessWidget {
  final IconData iconData;
  final double size;
  const BitacoraIconIndicator({
    Key key,
    this.iconData,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.0),
            color: AppTheme.kPrimaryColor,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: Icon(iconData, size: size, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
