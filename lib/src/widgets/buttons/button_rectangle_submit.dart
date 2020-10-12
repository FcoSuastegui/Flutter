import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonRectangleSubmit extends StatelessWidget {
  final Function submit;
  final String text;
  final double width;
  final Color color, textColor;

  ButtonRectangleSubmit({
    Key key,
    @required this.submit,
    @required this.text,
    this.color = AppTheme.kPrimaryColor,
    this.textColor = Colors.white,
    this.width = 0.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        width: MediaQuery.of(context).size.width * width,
        child: Center(
          child: Text(
            text ?? '',
          ),
        ),
      ),
      elevation: 0.0,
      color: color,
      textColor: textColor,
      onPressed: submit,
    );
  }
}
