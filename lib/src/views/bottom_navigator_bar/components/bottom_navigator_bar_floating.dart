import 'package:PipoVigilante/src/views/bottom_navigator_bar/controller/bottom_navigator_bar_controller.dart';
import 'package:PipoVigilante/src/views/qr/controller/qr_controller.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/data/models/response_model.dart';
import 'package:get/get.dart';

class BottomNavigotorBarFloating extends StatelessWidget {
  final BottomNavigatorBarController controller =
      Get.find<BottomNavigatorBarController>();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      heroTag: UniqueKey(),
      onPressed: () async {
        final ResponseModel response = await QrController().scanCamara();
        if (!response.status) {
          Get.snackbar(
            'Pipo Policia',
            response.message,
            colorText: Colors.white,
            backgroundColor: Colors.red,
          );
        } else {
          Get.toNamed('/qr-validator', arguments: response.data);
        }
      },
      backgroundColor: Colors.teal[800],
      child: Icon(
        Icons.qr_code_rounded,
      ),
    );
  }
}
