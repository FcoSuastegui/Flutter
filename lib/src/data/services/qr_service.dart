import 'package:PipoVigilante/src/data/models/qr_model.dart';
import 'package:PipoVigilante/src/helper/helpers.dart';

class QrService {
  List<Map<String, dynamic>> _qr = [
    {
      "title": "Acceso",
      "description": "Acceso generado para el día: 24/10/2020 " +
          "No se requiere confirmación de e acceso. " +
          "\nVisita: casa 2012" +
          "\nLote: 34",
      "data": "https://erp.midesarrollo.com.mx/server/qr/validacion",
      "status": true,
    },
    {
      "title": 'Acceso',
      "description": "El Cupon Qr no es valido o no esta vigente. " +
          "Es necesario realizaregistro y/o validación",
      "data": "https://erp.midesarrollo.com.mx/server/qr/validacion",
      "status": false,
    },
  ];

  Future<QrModel> validarQr() async {
    int number = RandomInt.generate(max: 2);
    final qr = QrModel.fromJson(_qr[number]);
    return qr;
  }
}
