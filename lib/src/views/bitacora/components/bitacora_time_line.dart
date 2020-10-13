import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/views/bitacora/components/bitacora_icon_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BitacoraTimeLine extends StatelessWidget {
  final BitacoraIconIndicator indicator;
  final String time;
  final String weather;
  final String temperature;
  final String phrase;
  final bool isLast;

  BitacoraTimeLine({
    Key key,
    this.indicator,
    this.time,
    this.weather,
    this.temperature,
    this.phrase,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.25,
      beforeLineStyle: LineStyle(color: AppTheme.kPrimaryColor),
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.3,
        drawGap: true,
        width: 30.0,
        height: 35,
        indicator: indicator,
      ),
      isLast: isLast,
      startChild: Center(
        child: Container(
          alignment: const Alignment(0.0, -0.50),
          child: Text(
            time,
            style: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.black.withOpacity(0.6),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      endChild: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 10, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              weather,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              temperature,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              phrase,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
