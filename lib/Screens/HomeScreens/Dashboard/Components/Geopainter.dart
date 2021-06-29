import 'package:flutter/material.dart';

class GeoPaint extends StatefulWidget {
  const GeoPaint({Key key}) : super(key: key);

  @override
  _GeoPaintState createState() => _GeoPaintState();
}

class _GeoPaintState extends State<GeoPaint> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(150, (150*1.1894273127753303).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    //  child: BarPainter(),
    );
  }
}
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.9867841,size.height*0.5740741);
    path_0.lineTo(size.width*0.4911894,size.height*0.9907407);
    path_0.lineTo(size.width*0.01321586,size.height*0.5888889);
    path_0.lineTo(size.width*0.7004405,size.height*0.01111111);
    path_0.lineTo(size.width*0.9867841,size.height*0.2518519);
    path_0.lineTo(size.width*0.7951542,size.height*0.4129630);
    path_0.lineTo(size.width*0.9867841,size.height*0.5740741);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01321586;
    paint_0_stroke.color=Color(0xff69BF87).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_stroke);

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_0,paint_0_fill);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BarPainter extends StatefulWidget {
  const BarPainter({Key key}) : super(key: key);

  @override
  _BarPainterState createState() => _BarPainterState();
}

class _BarPainterState extends State<BarPainter> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BarCustomPainter(),
      size: Size(40, (40*1.0062893081761006).toDouble()),
    );
  }
}
class BarCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff69BF87).withOpacity(0.5);
    canvas.drawRect(Rect.fromLTWH(size.width*0.8885975,size.height*0.004890250,size.width*0.1527736,size.height*1.248600),paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}