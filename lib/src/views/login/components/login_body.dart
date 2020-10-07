import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/views/login/components/login_banner.dart';
import 'package:PipoVigilante/src/views/login/components/login_form.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              LoginBanner(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
