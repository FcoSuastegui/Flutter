import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';

class LoginBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 0.0),
          child: Container(
            height: getProportionateScreenWidth(210.0),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.teal[800],
                Colors.teal[200],
              ],
            ),
          ),
        )
      ],
    );
  }
}
