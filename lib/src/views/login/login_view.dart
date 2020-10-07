import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/login/components/login_body.dart';

class LoginView extends StatelessWidget {
  static final String routeName = '/';
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: LoginBody(),
      ),
    );
  }
}
