import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonRoundedBack extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  ButtonRoundedBack({
    Key key,
    this.icon = Icons.arrow_back,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40.0),
      width: getProportionateScreenWidth(40.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        color: Colors.white,
        child: Icon(icon),
        onPressed: onPressed ?? () => Get.back(),
      ),
    );
  }
}
