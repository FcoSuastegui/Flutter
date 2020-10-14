import 'package:PipoVigilante/src/views/proveedores/controller/proveedor_controller.dart';
import 'package:get/get.dart';

class ProveedorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProveedorController());
  }
}
