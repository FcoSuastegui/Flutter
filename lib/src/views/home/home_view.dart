import 'package:PipoVigilante/src/views/home/components/home_accesos.dart';
import 'package:PipoVigilante/src/views/home/components/home_conoce.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeConoce(),
            HomeAccesos(),
          ],
        ),
      ),
    );
  }
}
