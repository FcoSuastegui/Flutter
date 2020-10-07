import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/routes/routes.dart';
import 'package:PipoVigilante/src/themes/app_theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pipo Vigilante',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: AppThemeData.themeData,
      initialRoute: '/home',
      getPages: Routes.routes,
    );
  }
}
