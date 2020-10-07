import 'package:PipoVigilante/src/data/models/notification_model.dart';
import 'package:PipoVigilante/src/views/notifications/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/helper/helpers.dart';
import 'package:get/get.dart';

class NotificationContentView extends StatelessWidget {
  static final String routeName = '/notification-content';
  final NotificationModel notification = Get.find<NotificationController>().notification;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          notification.title ?? '',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Iconos.nombre(
                      nombre: notification.icon,
                      size: 100.0,
                      color: AppTheme.kPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Hola Juan Peréz",
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              child: Text(
                notification.description,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
