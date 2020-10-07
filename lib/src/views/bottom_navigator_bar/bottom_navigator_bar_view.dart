import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/components/bottom_navigator_bar_child.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/components/bottom_navigator_bar_floating.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/components/bottom_navigator_bar_header.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/controller/bottom_navigator_bar_controller.dart';

class BottomNavigatorBarView extends GetView<BottomNavigatorBarController> {
  static final String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: DefaultAppBar(
          title: BottomNavigatorBarHeader(),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://www.miiavatar.es/i/hombre.png",
                ),
              ),
            ),
          ],
        ),
        body: controller.pages[controller.indexSelected.value],
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: BottomNavigotorBarFloating(),
        bottomNavigationBar: BottomNavigatorBarChild(),
      ),
    );
  }
}
