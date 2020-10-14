import 'package:PipoVigilante/src/views/proveedores/controller/proveedor_controller.dart';
import 'package:PipoVigilante/src/widgets/listtile/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProveedorBody extends GetView<ProveedorController> {
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
                  controller.listProveedor.length,
                  (index) => DefaultListTile(
                    text: '${controller.listProveedor[index].titulo}',
                    top: 5.0,
                    bottom: 5.0,
                    onPress: () {
                      controller
                          .selectProveedor(controller.listProveedor[index]);
                      Get.toNamed('/proveedores-details');
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
