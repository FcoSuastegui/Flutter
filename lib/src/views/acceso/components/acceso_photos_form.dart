import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/views/acceso/controller/acceso_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccesoPhotosForm extends GetView<AccesoController> {
  final bool vehiculo;
  const AccesoPhotosForm({
    Key key,
    this.vehiculo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Favor de tomar la foto',
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: controller.openIdentificacion,
                child: Container(
                  child: Column(
                    children: [
                      GetBuilder<AccesoController>(
                        id: "identificacion",
                        builder: (_) => controller.identificacion == null
                            ? Icon(
                                Icons.credit_card,
                                color: AppTheme.kPrimaryColor,
                                size: 50.0,
                              )
                            : Stack(
                                children: [
                                  Image.file(controller.identificacion),
                                  Positioned(
                                    right: 1,
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap:
                                          controller.deletePhotoIdentificacion,
                                      child: Icon(
                                        Icons.clear,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                      ),
                      Text(
                        'Identificación',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: controller.openPersona,
                child: Container(
                  child: Column(
                    children: [
                      GetBuilder<AccesoController>(
                        id: "persona",
                        builder: (_) => controller.persona == null
                            ? Icon(
                                Icons.account_box,
                                color: AppTheme.kPrimaryColor,
                                size: 50.0,
                              )
                            : Stack(
                                children: [
                                  Image.file(controller.persona),
                                  Positioned(
                                    right: 1,
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: controller.deletePhotoPersona,
                                      child: Icon(
                                        Icons.clear,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                      ),
                      Text(
                        'Persona',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            vehiculo
                ? Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: controller.openVehiculo,
                      child: Container(
                        child: Column(
                          children: [
                            GetBuilder<AccesoController>(
                              id: "vehiculo",
                              builder: (_) => controller.vehiculo == null
                                  ? Icon(
                                      Icons.directions_car,
                                      color: AppTheme.kPrimaryColor,
                                      size: 50.0,
                                    )
                                  : Stack(
                                      children: [
                                        Image.file(controller.vehiculo),
                                        Positioned(
                                          right: 1,
                                          child: GestureDetector(
                                            behavior:
                                                HitTestBehavior.translucent,
                                            onTap:
                                                controller.deletePhotoVehiculo,
                                            child: Icon(
                                              Icons.clear,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                            ),
                            Text(
                              'Vehiculo',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink()
          ],
        ),
      ],
    );
  }
}
