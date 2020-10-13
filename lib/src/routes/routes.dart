import 'package:PipoVigilante/src/views/bitacora/bitacora_details_view.dart';
import 'package:get/get.dart';
import 'package:PipoVigilante/src/views/acceso/acceso_peatonal_view.dart';
import 'package:PipoVigilante/src/views/acceso/acceso_vehiculo_view.dart';
import 'package:PipoVigilante/src/views/acceso/bindings/acceso_binding.dart';
import 'package:PipoVigilante/src/views/bitacora/bitacora_view.dart';
import 'package:PipoVigilante/src/views/notifications/notification_content_view.dart';
import 'package:PipoVigilante/src/views/qr/qr_validation_view.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/bindings/bottom_navigator_bar_binding.dart';
import 'package:PipoVigilante/src/views/bottom_navigator_bar/bottom_navigator_bar_view.dart';
import 'package:PipoVigilante/src/views/forgot_password/forgot_password_view.dart';
import 'package:PipoVigilante/src/views/login/login_view.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: LoginView.routeName,
      page: () => LoginView(),
    ),
    GetPage(
      name: ForgotPassWordView.routeName,
      page: () => ForgotPassWordView(),
    ),
    GetPage(
      name: NotificationContentView.routeName,
      page: () => NotificationContentView(),
    ),
    GetPage(
      name: AccesoPeatonalView.routeName,
      page: () => AccesoPeatonalView(),
      binding: AccesoBinding(),
    ),
    GetPage(
      name: BitacoraView.routeName,
      page: () => BitacoraView(),
    ),
    GetPage(
      name: BitacoraDetailsView.routeName,
      page: () => BitacoraDetailsView(),
    ),
    GetPage(
      name: AccesoVehiculoView.routeName,
      page: () => AccesoVehiculoView(),
      binding: AccesoBinding(),
    ),
    GetPage(
      name: QrValidationView.routeName,
      page: () => QrValidationView(),
    ),
    GetPage(
      name: BottomNavigatorBarView.routeName,
      page: () => BottomNavigatorBarView(),
      binding: BottomNavigatorBarBinding(),
    ),
  ];
}
