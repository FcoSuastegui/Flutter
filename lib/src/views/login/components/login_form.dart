import 'package:PipoVigilante/src/widgets/buttons/button_rectangle_submit.dart';
import 'package:PipoVigilante/src/widgets/fields/deafult_text_field_rectangle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/login/bloc/login_bloc.dart';
import 'package:PipoVigilante/src/widgets/loading/loading.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(
        builder: (context) {
          final login = context.bloc<LoginBloc>();
          return FormBlocListener<LoginBloc, String, String>(
            onSubmitting: (context, state) => LoadingDialog.show(context),
            onSuccess: (context, state) {
              LoadingDialog.hide(context);
              Get.offAndToNamed('/home');
            },
            onFailure: (context, state) {
              LoadingDialog.hide(context);
              login.close();
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  DefaultTextFieldRectangleBloc(
                    hintText: 'Ingresa tu correo',
                    textFieldBloc: login.username,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  DefaultTextFieldRectangleBloc(
                    hintText: 'Ingresa tu contraseña',
                    textFieldBloc: login.password,
                    keyboardType: TextInputType.emailAddress,
                    suffixButton: SuffixButton.obscureText,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  Row(
                    children: [
                      /* Checkbox(value: false, onChanged: (value) {}),
                      Text("Recuérdame"), */
                      Spacer(),
                      GestureDetector(
                        onTap: () => Get.toNamed('/forgot'),
                        child: Text(
                          "Recuperar contraseña",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  ButtonRectangleSubmit(
                    submit: login.submit,
                    text: 'Continuar',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
