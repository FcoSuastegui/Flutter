import 'package:PipoVigilante/src/views/acceso/components/acceso_peatonal_form.dart';
import 'package:PipoVigilante/src/views/acceso/controller/acceso_controller.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccesoPeatonalView extends GetView<AccesoController> {
  static final String routeName = '/registro-peatonal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Registro Peatonal",
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
          child: AccesoPeatonalForm()
        ),
      ),
    );
  }
}
