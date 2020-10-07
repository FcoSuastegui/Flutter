import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class PingTextFieldBloc extends StatelessWidget {
  final bool autofocus, obscureText;
  final TextInputType keyboardType;
  final TextFieldBloc<Object> textFieldBloc;
  final ValueChanged<String> onChanged;
  final FocusNode focusNode;
  final SuffixButton suffixButton;

  PingTextFieldBloc({
    Key key,
    @required this.textFieldBloc,
    this.autofocus = false,
    this.obscureText = true,
    this.keyboardType,
    this.onChanged,
    this.focusNode,
    this.suffixButton = SuffixButton.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(60.0),
      child: TextFieldBlocBuilder(
        focusNode: focusNode,
        suffixButton: suffixButton,
        maxLength: 1,
        maxLengthEnforced: true,
        textFieldBloc: textFieldBloc,
        style: TextStyle(fontSize: 24.0),
        obscureText: obscureText,
        autofocus: autofocus,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: AppTheme.kTextColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: AppTheme.kTextColor),
          ),
        ),
      ),
    );
  }
}
