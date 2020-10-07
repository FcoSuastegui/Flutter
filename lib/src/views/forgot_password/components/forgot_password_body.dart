
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/forgot_password/components/forgot_password_form.dart';

class ForgotPassWordBody extends StatelessWidget {
  const ForgotPassWordBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Recuperar contraseña",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28.0),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Por favor ingresa tu correo electrónico, te enviaremos \nun link para restablecer tu contraseña.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              ForgotPassWordForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
