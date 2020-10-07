
import 'package:PipoVigilante/src/views/notifications/notification_view.dart';
import 'package:PipoVigilante/src/views/settings/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/views/home/home_view.dart';

class BottomNavigatorBarController extends GetxController {
  RxInt _indexSelected = 0.obs;
  RxInt get indexSelected => _indexSelected;
  void onTabChange(int index) => _indexSelected.value = index;

  List<Widget> _pages = [
    Homeview(),
    NotificationView(),
    SettingView(),
  ];

  List<Widget> get pages => _pages;

}
