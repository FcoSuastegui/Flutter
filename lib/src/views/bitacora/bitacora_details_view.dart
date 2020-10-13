import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';

class BitacoraDetailsView extends StatelessWidget {
  static final String routeName = '/bitacora-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Bitacora detalles",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image.network(
                        "https://imperial.timeshareapp.com/images/avatar-masculino.png",
                      ),
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 200,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Mariana Droshmith ",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            "Ingreso Puerta 3",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                          Text(
                            "Acceso: 12/10/2020",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                          Text(
                            "UCV:  202",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                          Text(
                            "Registro A3452",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                          Text(
                            "Tipo: QR",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "No registra herramienta o equipo",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              CheckboxListTile(
                value: true,
                onChanged: null,
                title: Text(
                  "Se dio aviso al propietario",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CheckboxListTile(
                value: true,
                onChanged: null,
                title: Text(
                  "Se dio ingreso",
                  style: TextStyle(fontSize: 15.0, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Comentarios:",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "El propietario indica que solo se permite el acceso si porta su uniforme completo",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Registrada por: Martin Gómez",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "11:00 am",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
