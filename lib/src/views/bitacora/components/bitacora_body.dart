import 'package:PipoVigilante/src/views/bitacora/components/bitacora_icon_indicator.dart';
import 'package:PipoVigilante/src/views/bitacora/components/bitacora_time_line.dart';
import 'package:flutter/material.dart';

class BitacoraBody extends StatelessWidget {
  const BitacoraBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: Colors.black
      ),
      child: ListView(
        children: <Widget>[
          BitacoraTimeLine(
            indicator: const BitacoraIconIndicator(
              iconData: Icons.home,
              size: 20,
            ),
            time: '18:00',
            weather: 'Cloudy',
            temperature: '26°C',
            phrase: 'A beautiful afternoon to take a walk into the park.'
                " Don't forget to take your water.",
          ),
          BitacoraTimeLine(
            indicator: const BitacoraIconIndicator(
              iconData: Icons.home,
              size: 20,
            ),
            time: '20:00',
            weather: 'Sunset',
            temperature: '24°C',
            phrase: 'Enjoy the view, the sun will be back tomorrow.',
          ),
          BitacoraTimeLine(
            indicator: const BitacoraIconIndicator(
              iconData: Icons.home,
              size: 20,
            ),
            time: '22:00',
            weather: 'Fall of rain',
            temperature: '18°C',
            phrase: 'Temperature is decreasing...',
          ),
          BitacoraTimeLine(
            indicator: const BitacoraIconIndicator(
              iconData: Icons.home,
              size: 20,
            ),
            time: '00:00',
            weather: 'Chilly',
            temperature: '16°C',
            phrase: "Have a good night, don't forget your blanket.",
            isLast: true,
          ),
        ],
      ),
    );
  }
}
