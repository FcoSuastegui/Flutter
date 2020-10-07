import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/views/forgot_password/components/forgot_password_body.dart';
class ForgotPassWordView extends StatelessWidget {
  static final String routeName = '/forgot';

  const ForgotPassWordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recuperar contraseña"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ForgotPassWordBody(),
      ),
    );
  }
}