import 'package:PipoVigilante/src/views/bitacora/components/bitacora_body.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:flutter/material.dart';
class BitacoraView extends StatelessWidget {
  static final String routeName = '/bitacora';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Bitacora",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BitacoraBody(),
    );
  }
}