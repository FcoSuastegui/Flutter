import 'package:PipoVigilante/src/views/notifications/controller/notification_controller.dart';
import 'package:PipoVigilante/src/widgets/listtile/notification_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
      init: NotificationController(),
      builder: (controller) => Container(
        padding: EdgeInsets.all(20.0),
        child: Obx(
          () => controller.loading.value
              ? Center(child: CircularProgressIndicator())
              : ListView(
                  padding: EdgeInsets.only(top: 0.0),
                  shrinkWrap: false,
                  children: List.generate(
                    controller.notifications.length,
                    (index) => NotificationListTile(
                      text: controller.notifications[index].title,
                      subtext: controller.notifications[index].subtitle,
                      leading: Icons.done,
                      bottom: 10.0,
                      onPress: () {
                        controller.selectNotification(controller.notifications[index]);
                        Get.toNamed('/notification-content');
                      },
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
