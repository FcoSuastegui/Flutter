import 'package:PipoVigilante/src/widgets/buttons/button_rectangle_submit.dart';
import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:PipoVigilante/src/widgets/loading/loading.dart';

class ForgotPassWordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPassWordBloc(),
      child: Builder(
        builder: (context) {
          final forgot = context.bloc<ForgotPassWordBloc>();
          return FormBlocListener<ForgotPassWordBloc, String, String>(
            onSubmitting: (context, state) => LoadingDialog.show(context),
            onSuccess: (context, state) => LoadingDialog.hide(context),
            onFailure: (context, state) {
              LoadingDialog.hide(context);
              forgot.close();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DefaultTextFieldRectangleBloc(
                  hintText: 'Ingresa tu correo electrónico',
                  textFieldBloc: forgot.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                ButtonRectangleSubmit(
                  submit: forgot.submit,
                  text: 'Continue',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
