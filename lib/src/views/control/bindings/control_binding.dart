import 'package:PipoVigilante/src/views/control/controller/control_controller.dart';
import 'package:get/get.dart';

class ControlBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControlController());
  }
}
