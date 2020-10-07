import 'package:PipoVigilante/src/data/models/qr_model.dart';
import 'package:PipoVigilante/src/widgets/qr/qr_content.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:get/get.dart';

class QrValidationView extends StatelessWidget {
  static final String routeName = '/qr-validator';

  @override
  Widget build(BuildContext context) {
    final QrModel qr = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Acesso",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: QrContent(
        qr: qr
      ),
    );
  }
}
