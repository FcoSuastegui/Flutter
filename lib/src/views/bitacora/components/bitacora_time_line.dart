import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'package:PipoVigilante/src/views/bitacora/components/bitacora_icon_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BitacoraTimeLine extends StatelessWidget {
  final BitacoraIconIndicator indicator;
  final String time;
  final String title;
  final String subtitle;
  final String description;
  final bool isLast;
  final Function onTap;

  BitacoraTimeLine({
    Key key,
    this.indicator,
    @required this.time,
    @required this.title,
    this.subtitle,
    this.description,
    this.isLast = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.4,
      beforeLineStyle: LineStyle(color: AppTheme.kPrimaryColor),
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.3,
        drawGap: true,
        width: 50.0,
        height: 35.0,
        indicator: indicator,
      ),
      isLast: isLast,
      startChild: Center(
        child: Container(
          alignment: const Alignment(0.0, -0.80),
          child: Text(
            time ?? '',
            style: GoogleFonts.lato(
              fontSize: 15.0,
              color: Colors.black.withOpacity(0.6),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      endChild: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 10.0,
            top: 20.0,
            bottom: 0.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title ?? '',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                subtitle ?? '',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                description ?? '',
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
