import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: DefaultAppBar(

        )
    );
  }
}