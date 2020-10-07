import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';

class AppThemeData {
  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0xFF8B8B8B),
          fontSize: 20.0,
        ),
      ),
    ),
    canvasColor: AppTheme.kGreenBackground,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: AppTheme.kTextColor),
      bodyText2: TextStyle(color: AppTheme.kTextColor),
    ),
    primaryColor: AppTheme.kPrimaryColor,
    backgroundColor: AppTheme.kPrimaryColor,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
