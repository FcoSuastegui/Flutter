import 'package:PipoVigilante/src/data/models/control_model.dart';

class ControlService {
  List<Map<String, dynamic>> _control = [
    {
      "titulo": "Mantenimiento de áreas",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Marcos Barrón",
    },
    {
      "titulo": "Mantenimiento torre azteca",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Juan Perez",
    },
    {
      "titulo": "Limpieza programada",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Marcos Barrón",
    },
    {
      "titulo": "Acceso Municipal",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Juan Perez",
    },
    {
      "titulo": "Mantenimiento torre azteca",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Marcos Barrón",
    },
  ];

  Future<List<ControlModel>> getData() async {
    final List<ControlModel> data = new List();
    _control.forEach(
      (item) => data.add(
        ControlModel.fromJson(item),
      ),
    );
    return data;
  }
}
