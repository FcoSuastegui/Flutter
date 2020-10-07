import 'package:PipoVigilante/src/data/models/qr_model.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/helper/helpers.dart';
import 'package:PipoVigilante/src/themes/size_config.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrContent extends StatelessWidget {
  final QrModel qr;
  QrContent({
    Key key,
    @required this.qr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 15.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Container(
                      height: 220.0,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: QrImage(
                          data: qr.data,
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      left: 20.0,
                      right: 5.0,
                      top: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  top: 5.0,
                                  left: 0.0,
                                  bottom: 0.0,
                                ),
                                child: Text(
                                  "Resumen:",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10.0,
                                  left: 0.0,
                                  right: 25.0,
                                  bottom: 0.0,
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  qr.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(30.0),
                              ),
                              Center(
                                child: Iconos.nombre(
                                  nombre: qr.status
                                      ? 'check_circle'
                                      : 'not_interested',
                                  size: 100.0,
                                  color: qr.status
                                      ? AppTheme.kPrimaryColor
                                      : Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
