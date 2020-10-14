import 'package:PipoVigilante/src/data/models/proveedor_model.dart';

class ProveedorService {
  List<Map<String, dynamic>> _proveedor = [
    {
      "titulo": "Basura",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Marcos Barrón",
    },
    {
      "titulo": "Poda",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Juan Perez",
    },
    {
      "titulo": "Mantenimiento",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Marcos Barrón",
    },
    {
      "titulo": "Camión de material",
      "descripcion":
          "Por medidas preventivas el acceso a las areas de la torre II se encuentran inhabilitadas, el dia de apertura, previo aviso es para el lunes 28 de diciembre . Gracias ",
      "emitido": "Juan Perez",
    },
  ];

  Future<List<ProveedorModel>> getData() async {
    final List<ProveedorModel> data = new List();
    _proveedor.forEach(
      (item) => data.add(
        ProveedorModel.fromJson(item),
      ),
    );
    return data;
  }
}
