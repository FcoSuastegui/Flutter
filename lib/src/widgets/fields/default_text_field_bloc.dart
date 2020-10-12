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
  final int maxLength, maxLines;
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
    this.maxLines = 1,
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
      maxLines: maxLines,
      maxLengthEnforced: maxLengthEnforced,
      inputFormatters: inputFormatters,
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      decoration: InputDecoration(
        counterText: counterText,
        suffix: suffix,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.all(10.0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
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
