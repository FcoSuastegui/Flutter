import 'package:get/get.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/controller/bottom_navigator_bar_controller.dart';

class BottomNavigatorBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigatorBarController());
  }
}
