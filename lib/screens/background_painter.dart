import 'package:flutter/cupertino.dart';
import 'package:veterinaria/screens/constant.dart';

class BackgroundPainter extends CustomPainter {
  BackgroundPainter()
      : bluePaint = Paint()
          ..color = Palette.lightBlue
          ..style = PaintingStyle.fill,
        greyPaint = Paint()
          ..color = Palette.darkBlue
          ..style = PaintingStyle.fill,
        orangePaint = Paint()
          ..color = Palette.orange
          ..style = PaintingStyle.fill,
        blackPaint = Paint()
          ..color = Palette.blackdark
          ..style = PaintingStyle.fill;
  final Paint bluePaint;
  final Paint greyPaint;
  final Paint orangePaint;
  final Paint blackPaint;
  @override
  void paint(Canvas canvas, Size size) {
    print('painting');

    paintBlue(canvas, size);
    paintOrange(canvas, size);
  }

  void paintBlue(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, orangePaint);
  }

  void paintOrange(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, bluePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
