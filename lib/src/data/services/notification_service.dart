import 'package:PipoVigilante/src/data/models/notification_model.dart';

class NotificationService {
  List<Map<String, dynamic>> _notifiaction = [
    {
      "title": "Pipo policia",
      "subtitle": "Acceso",
      "icon": "qr_code_rounded",
      "description": "Hola juan, se ha generado un nuevo acceso desde la plataforma",
    },
    {
      "title": "Pipo policia",
      "subtitle": "Proveedores",
      "icon": "local_shipping_outlined",
      "description": "Hola juan, un nuevo proveedor entrará al condominio",
    },
    {
      "title": "Condominio 2",
      "subtitle": "Proveedores",
      "icon": "local_shipping_outlined",
      "description": "Hola juan, entrará un nuevo proveedor de mueble",
    },
    {
      "title": "Pipo policia",
      "subtitle": "Acceso",
      "icon": "qr_code_rounded",
      "description": "Hola juan, se ha generado un nuevo acceso desde la plataforma",
    },
    {
      "title": "Pipo policia",
      "subtitle": "Servicio",
      "icon": "settings",
      "description": "Hola jaun, el servicio de agua esta inhabilitado",
    },
  ];

  Future<List<NotificationModel>> getData() async {
    final List<NotificationModel> data = new List();
    _notifiaction.forEach(
      (item) => data.add(NotificationModel.fromJson(item)),
    );
    return data;
  }

}
