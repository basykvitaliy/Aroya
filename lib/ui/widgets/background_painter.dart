import 'package:aroya/ui/style/colors.dart';
import 'package:aroya/ui/style/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackGroundPaint extends StatelessWidget {
  const BackGroundPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height), // Размер области для рисования
      painter: BackGroundPainter(),
    );
  }
}

class BackGroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Drawing central oval
    final _paintOval = Paint()
      ..color = ColorsApp.mainBlue
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;
    canvas.save();
    canvas.translate(size.width / 2, size.height / 2 + 200.h);
    canvas.rotate(-15 * 3.1415927 / 180);
    Rect ovalRect = Rect.fromCenter(center: Offset(0, 0), width: 800.w, height: 665.h);
    canvas.drawOval(ovalRect, _paintOval);
    canvas.restore();

    //Drawing cells
    LinearGradient gradient = GradientApp.greyLine;
    var shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    Paint paintLine = Paint()
      ..shader = shader
      ..strokeWidth = 0.1
      ..style = PaintingStyle.stroke;
    final double gridSizeX = 80.0;
    final double gridSizeY = 60.0;
    for (double x = 0; x <= size.width; x += gridSizeX) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paintLine);
    }
    for (double y = 0; y <= size.height; y += gridSizeY) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paintLine);
    }

    //Drawing line
    Path pathVector = Path();
    pathVector.moveTo(0, size.height - size.height / 7);
    pathVector.quadraticBezierTo(
      size.width * 0.45,
      size.height - size.height / 6,
      size.width,
      size.height - size.height / 15,
    );

    // Create a Gradient
    gradient = GradientApp.welcomeGradient;
    shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Setting up a gradient brush
    final paint = Paint()
      ..shader = shader
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    canvas.drawPath(pathVector, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
