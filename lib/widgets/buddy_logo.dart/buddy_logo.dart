import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class BuddyLogo extends StatelessWidget {
  final double size;
  final bool showText;

  const BuddyLogo({super.key, this.size = 120, this.showText = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CustomPaint(painter: _LogoPainter()),
        ),
        if (showText) ...[
          const SizedBox(height: 16),
          const Text(
            'BUDDY SYSTEM',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'رفيقك النفسي في الميدان',
            style: TextStyle(
              fontSize: 13,
              color: AppColors.sageGreenLight,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ],
    );
  }
}

class _LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final scale = size.width / 200;

    final outerCircle = Paint()
      ..color = AppColors.inkLight.withOpacity(0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5 * scale;
    canvas.drawCircle(center, 90 * scale, outerCircle);

    final shieldPaint = Paint()
      ..color = AppColors.primaryOrange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7 * scale
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    final shieldPath = Path()
      ..moveTo(60 * scale, 60 * scale)
      ..quadraticBezierTo(60 * scale, 50 * scale, 70 * scale, 50 * scale)
      ..lineTo(130 * scale, 50 * scale)
      ..quadraticBezierTo(140 * scale, 50 * scale, 140 * scale, 60 * scale)
      ..lineTo(140 * scale, 110 * scale)
      ..quadraticBezierTo(140 * scale, 150 * scale, 100 * scale, 165 * scale)
      ..quadraticBezierTo(60 * scale, 150 * scale, 60 * scale, 110 * scale)
      ..close();
    canvas.drawPath(shieldPath, shieldPaint);

    final brainPaint = Paint()
      ..color = AppColors.sageGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4 * scale
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    final brainPath = Path()
      ..moveTo(75 * scale, 90 * scale)
      ..quadraticBezierTo(85 * scale, 75 * scale, 95 * scale, 85 * scale)
      ..quadraticBezierTo(105 * scale, 70 * scale, 115 * scale, 85 * scale)
      ..quadraticBezierTo(125 * scale, 75 * scale, 125 * scale, 95 * scale)
      ..quadraticBezierTo(130 * scale, 110 * scale, 115 * scale, 115 * scale)
      ..quadraticBezierTo(105 * scale, 125 * scale, 95 * scale, 115 * scale)
      ..quadraticBezierTo(85 * scale, 125 * scale, 75 * scale, 110 * scale)
      ..quadraticBezierTo(70 * scale, 100 * scale, 75 * scale, 90 * scale)
      ..close();
    canvas.drawPath(brainPath, brainPaint);

    final dotPaint = Paint()..color = AppColors.sageGreen;
    canvas.drawCircle(Offset(100 * scale, 98 * scale), 4 * scale, dotPaint);

    final pulsePaint = Paint()
      ..color = AppColors.sageGreenLight
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3 * scale
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    final pulsePath = Path()
      ..moveTo(55 * scale, 140 * scale)
      ..lineTo(75 * scale, 140 * scale)
      ..lineTo(85 * scale, 128 * scale)
      ..lineTo(95 * scale, 152 * scale)
      ..lineTo(105 * scale, 140 * scale)
      ..lineTo(125 * scale, 140 * scale)
      ..lineTo(135 * scale, 128 * scale)
      ..lineTo(145 * scale, 152 * scale)
      ..lineTo(155 * scale, 140 * scale);
    canvas.drawPath(pulsePath, pulsePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
