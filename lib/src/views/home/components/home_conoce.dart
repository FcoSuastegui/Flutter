import 'package:PipoVigilante/src/views/qr/controller/qr_controller.dart';
import 'package:PipoVigilante/src/widgets/cards/default_card.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/data/models/response_model.dart';

class HomeConoce extends StatelessWidget {
  const HomeConoce({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            'Conoce: ',
            style: TextStyle(
              color: AppTheme.kPrimaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultCard(
              text: 'Reglamentos',
              icon: Icons.info,
              left: 0.0,
            ),
            DefaultCard(
              text: 'Validar',
              icon: Icons.qr_code_rounded,
              onPress: () async {
                final ResponseModel response =
                    await QrController().scanCamara();
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
            ),
            DefaultCard(
              text: 'Registro',
              icon: Icons.add_circle,
              right: 0.0,
              onPress: openOptions,
            )
          ],
        ),
      ],
    );
  }

  Future<void> openOptions() async {
    await Get.dialog(
      Center(
        child: SizedBox(
          height: 250,
          child: Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Selecciona el método de registro",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                  Divider(),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Get.back();
                      Get.toNamed('/registro-peatonal');
                    },
                    child: Container(
                      width: Get.width,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.directions_walk,
                            color: AppTheme.kPrimaryColor,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Registro Peatonal",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Get.back();
                      Get.toNamed('/registro-vehiculo');
                    },
                    child: Container(
                      width: Get.width,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.electric_car,
                            color: AppTheme.kPrimaryColor,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Registro Vehiculo",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
