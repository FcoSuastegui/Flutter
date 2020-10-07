import 'package:PipoVigilante/src/views/bottom_navigator_bar/controller/bottom_navigator_bar_controller.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigatorBarChild extends StatelessWidget {
  final BottomNavigatorBarController controller =
      Get.find<BottomNavigatorBarController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 8,
        ),
        child: GNav(
          gap: 2,
          activeColor: Colors.white,
          iconSize: 20,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          duration: Duration(milliseconds: 800),
          tabBackgroundColor: Colors.teal[800],
          tabs: [
            GButton(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
              icon: FontAwesome.home,
              text: 'Inicio',
            ),
            GButton(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
              iconActiveColor: Colors.transparent,
              leading: Badge(
                position: controller.indexSelected.value == 1
                    ? BadgePosition.topStart(
                        top: -10,
                      )
                    : null,
                badgeContent: Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.notifications,
                  color: controller.indexSelected.value == 1
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              text: 'Notificación',
            ),
            GButton(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
              leading: CircleAvatar(
                maxRadius: 10.0,
                minRadius: 10.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://www.miiavatar.es/i/hombre.png",
                ),
              ),
              text: 'Configuración',
            ),
          ],
          selectedIndex: controller.indexSelected.value,
          tabMargin: EdgeInsets.all(0.0),
          onTabChange: controller.onTabChange,
        ),
      ),
    );
  }
}
