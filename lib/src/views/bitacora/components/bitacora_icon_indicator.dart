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
            shape: BoxShape.circle,
            color: AppTheme.kPrimaryColor,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                iconData,
                size: size,
                color: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }
}
