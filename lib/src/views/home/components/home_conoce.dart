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
              iconColor: Colors.grey,
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
            )
          ],
        ),
      ],
    );
  }
}
