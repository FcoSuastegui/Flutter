import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String labelText, hintText;

  DefaultTextFormField({
    Key key,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText ?? '',
        hintText: hintText ?? '',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42.0,
          vertical: 20.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(
            color: AppTheme.kTextColor,
          ),
          gapPadding: 10.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(
            color: AppTheme.kTextColor,
          ),
          gapPadding: 10.0,
        ),
      ),
    );
  }
}
