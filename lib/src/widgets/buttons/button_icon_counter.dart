import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:flutter/material.dart';

class ButtonIconCounter extends StatelessWidget {
  final IconData icon;
  final int number;
  final Function onTap;

  ButtonIconCounter({
    Key key,
    @required this.icon,
    this.number = 0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50.0),
      onTap: onTap,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(0.1)),
            height: getProportionateScreenHeight(46.0),
            width: getProportionateScreenWidth(46.0),
            decoration: BoxDecoration(
              color: AppTheme.kSecondColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppTheme.kSecondColor.withOpacity(0.8),
            ),
          ),
          number > 0
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: getProportionateScreenWidth(16.0),
                    width: getProportionateScreenWidth(16.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${number.toString()}",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10.0),
                          height: 1.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
