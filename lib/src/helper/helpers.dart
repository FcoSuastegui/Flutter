import 'package:flutter/material.dart';
import 'package:PipoVigilante/src/themes/app_theme.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';

class CirclePaint extends CustomPainter {
  final Offset offset;
  final double radius, strokeWidth;
  final PaintingStyle style;
  final Color color;
  Paint _paint;

  CirclePaint({
    @required this.offset,
    @required this.radius,
    this.style = PaintingStyle.fill,
    this.color = AppTheme.kHeaderCircle,
    this.strokeWidth = 10.0,
  }) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = style;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(offset, radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Iconos {
  static Icon nombre({
    String nombre = 'home',
    double size = 25.0,
    Color color = Colors.white,
  }) {
    Map<String, dynamic> iconos = {
      'home': Icon(Icons.home, color: color, size: size),
      'person_outline': Icon(Icons.person_outline, color: color, size: size),
      'announcement': Icon(Icons.announcement, color: color, size: size),
      'attach_money': Icon(Icons.attach_money, color: color, size: size),
      'assignment': Icon(Icons.assignment, color: color, size: size),
      'thumbs_up_down': Icon(Icons.thumbs_up_down, color: color, size: size),
      'library_books': Icon(Icons.library_books, color: color, size: size),
      'exit_to_app': Icon(Icons.exit_to_app, color: color, size: size),
      'cake': Icon(Icons.cake, color: color, size: size),
      'monetization_on': Icon(Icons.monetization_on, color: color, size: size),
      'settings': Icon(Icons.settings, color: color, size: size),
      'qr_code_rounded': Icon(Icons.qr_code_rounded, color: color, size: size),
      'check_circle': Icon(Icons.check_circle, color: color, size: size),
      'not_interested': Icon(Icons.not_interested, color: color, size: size),
      'local_shipping_outlined':
          Icon(Icons.local_shipping_outlined, color: color, size: size),
      'attach_file': Icon(Icons.attach_file, color: color, size: size),
    };
    return iconos[nombre] ?? Icon(Icons.home, color: color, size: size);
  }
}

extension RandomInt on int {
  static int generate({int min = 0, @required int max}) {
    final _random = Random();
    return min + _random.nextInt(max - min);
  }
}
