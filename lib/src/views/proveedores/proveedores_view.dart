import 'package:PipoVigilante/src/views/proveedores/components/proveedor_body.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';

class ProveedoresView extends StatelessWidget {
  static final String routeName = '/proveedores';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Proveedores",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ProveedorBody(),
    );
  }
}
