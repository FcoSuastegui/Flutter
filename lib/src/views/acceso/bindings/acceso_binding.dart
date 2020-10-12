import 'package:PipoVigilante/src/views/acceso/controller/acceso_controller.dart';
import 'package:get/get.dart';

class AccesoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccesoController());
  }
}
