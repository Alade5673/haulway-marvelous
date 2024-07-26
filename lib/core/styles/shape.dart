import 'package:flutter/widgets.dart';

class CustomShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, rect.height * 0.9);
    path.quadraticBezierTo(
      rect.width * 0.00,
      rect.height * 0.8,
      rect.width * 0.0,
      rect.height * 0.7,
    );
    path.lineTo(rect.width, rect.height);
    path.lineTo(rect.width, 0);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}
