import 'package:PipoVigilante/src/views/control/components/control_body.dart';
import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/widgets/appbars/default_app_bar.dart';

class ControlView extends StatelessWidget {
  static final String routeName = '/control';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: Text(
          "Control",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ControlBody(),
    );
  }
}
