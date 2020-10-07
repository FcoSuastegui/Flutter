import 'package:PipoVigilante/src/data/models/notification_model.dart';
import 'package:PipoVigilante/src/data/services/notification_service.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxList<NotificationModel> _notifications = List<NotificationModel>().obs;
  RxList<NotificationModel> get notifications => _notifications;

  NotificationModel _notification;
  NotificationModel get notification => _notification;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void selectNotification( NotificationModel notification ) => _notification = notification;

  Future<void> getData() async {
    _notifications.value = [];
    _loading.value = true;
    _notifications.value = await NotificationService().getData();
    _loading.value = false;
  }
}
