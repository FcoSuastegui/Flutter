import 'package:PipoVigilante/src/views/acceso/components/acceso_vehiculo_form.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:flutter/material.dart';

class AccesoVehiculoView extends StatelessWidget {
  static final String routeName = '/registro-vehiculo';
  const AccesoVehiculoView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Registro Vehiculo",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                "https://www.miiavatar.es/i/hombre.png",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AccesoVehiculoForm()
        ),
      ),
    );
  }
}
