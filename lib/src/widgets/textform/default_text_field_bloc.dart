import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class DefaultTextFieldBloc extends StatelessWidget {
  final TextFieldBloc<Object> textFieldBloc;
  final String labelText, hintText, counterText;
  final TextInputType keyboardType;
  final SuffixButton suffixButton;
  final Widget suffix, prefixIcon;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> inputFormatters;
  final Function onSubmitted;
  final TextStyle labelStyle, style;
  final int maxLength;
  final bool maxLengthEnforced;

  DefaultTextFieldBloc({
    Key key,
    @required this.textFieldBloc,
    this.labelText,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.onSubmitted,
    this.inputFormatters,
    this.suffixButton,
    this.labelStyle,
    this.style,
    this.maxLength,
    this.maxLengthEnforced = false,
    this.hintText,
    this.suffix,
    this.counterText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldBlocBuilder(
      textInputAction: textInputAction,
      textFieldBloc: textFieldBloc,
      onSubmitted: onSubmitted ?? (_) => FocusScope.of(context).nextFocus(),
      keyboardType: keyboardType,
      suffixButton: suffixButton,
      maxLength: maxLength,
      maxLengthEnforced: maxLengthEnforced,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        counterText: counterText,
        suffix: suffix,
        prefixIcon: prefixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.kPrimaryColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.kPrimaryColor,
          ),
        ),
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
      ),
      style: style,
    );
  }
}
