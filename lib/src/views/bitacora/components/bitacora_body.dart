import 'package:PipoVigilante/src/views/bitacora/components/bitacora_icon_indicator.dart';
import 'package:PipoVigilante/src/views/bitacora/components/bitacora_time_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BitacoraBody extends StatelessWidget {
  const BitacoraBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '12/10/2020',
          title: 'Acceso 104',
          subtitle: '10:00 am',
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.local_shipping_outlined,
            size: 20,
          ),
          time: '12/10/2020',
          title: 'Acceso proveedor',
          subtitle: '11:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '12/10/2020',
          title: 'Acceso 104',
          subtitle: '10:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_walk,
            size: 20,
          ),
          time: '12/10/2020',
          title: 'Registro 106',
          subtitle: '12:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '12/10/2020',
          title: 'Acceso 109',
          subtitle: '02:00 pm',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '13/10/2020',
          title: 'Acceso 104',
          subtitle: '10:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_walk,
            size: 20,
          ),
          time: '13/10/2020',
          title: 'Registro 106',
          subtitle: '12:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '13/10/2020',
          title: 'Acceso 109',
          subtitle: '02:00 pm',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '14/10/2020',
          title: 'Acceso 104',
          subtitle: '10:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_walk,
            size: 20,
          ),
          time: '14/10/2020',
          title: 'Registro 106',
          subtitle: '12:00 am',
          description: "",
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
        BitacoraTimeLine(
          indicator: const BitacoraIconIndicator(
            iconData: Icons.directions_car,
            size: 20,
          ),
          time: '14/10/2020',
          title: 'Acceso 109',
          subtitle: '02:00 pm',
          description: "",
          isLast: true,
          onTap: () => Get.toNamed('/bitacora-details'),
        ),
      ],
    );
  }
}
