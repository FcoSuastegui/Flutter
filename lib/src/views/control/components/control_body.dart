import 'package:PipoVigilante/src/views/control/controller/control_controller.dart';
import 'package:PipoVigilante/src/widgets/listtile/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlBody extends GetView<ControlController> {
  const ControlBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Obx(
        () => controller.loading.value
            ? Center(child: CircularProgressIndicator())
            : ListView(
                padding: EdgeInsets.only(top: 0.0),
                shrinkWrap: false,
                children: List.generate(
                  controller.listControl.length,
                  (index) => DefaultListTile(
                    text: '${controller.listControl[index].titulo}',
                    top: 5.0,
                    bottom: 5.0,
                    onPress: () {
                      controller.selectControl(controller.listControl[index]);
                      Get.toNamed('/control-details');
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
