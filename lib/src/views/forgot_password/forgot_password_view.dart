import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/views/forgot_password/components/forgot_password_body.dart';

class ForgotPassWordView extends StatelessWidget {
  static final String routeName = '/forgot';

  const ForgotPassWordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: Text(
          "Recuperar contraseña",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ForgotPassWordBody(),
      ),
    );
  }
}
