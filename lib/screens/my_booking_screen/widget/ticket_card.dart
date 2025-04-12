import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TicketShapePainter(),
      child: ClipPath(
        clipper: TicketShapeClipper(),
        child: Container(
          padding: const EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: 50,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(0, 6),
                blurRadius: 12,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date and Time
              Text(
                "Monday, 20 July '20 – 12:33",
                style: TextStyle(
                  color: CustomColors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.57,
                  letterSpacing: 0.0,
                ),
              ),
              const SizedBox(height: 12),

              // Route Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'KHI',
                    style: TextStyle(
                      color: CustomColors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.1,
                      letterSpacing: 0.0,
                    ),
                  ),
                  const Icon(Icons.flight_takeoff, color: Colors.deepPurple),
                  Text(
                    'DXB',
                    style: TextStyle(
                      color: CustomColors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.1,
                      letterSpacing: 0.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),

              // Airline
              const Text(
                'FLY JINNAH, AB-221',
                style: TextStyle(
                  color: Color(0xFF979797),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.57,
                  letterSpacing: 0.0,
                ),
              ),
              const Divider(height: 24),

              // Status Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Status',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 1.57,
                      letterSpacing: 0.0,
                      color: Color(0xFF7A7A7A),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF7F23),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      'Waiting for payment',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1.57,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TicketShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;

    final path =
        Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height - 30);

    const numberOfZigs = 5;
    final segmentWidth = size.width / numberOfZigs;
    for (int i = 0; i < numberOfZigs; i++) {
      final x1 = i * segmentWidth + segmentWidth / 2;
      final x2 = (i + 1) * segmentWidth;
      path
        ..lineTo(x1, size.height)
        ..lineTo(x2, size.height - 30);
    }

    path
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawShadow(path, Colors.black26, 20, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class TicketShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path =
        Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height - 20);

    const numberOfZigs = 5;
    final segmentWidth = size.width / numberOfZigs;
    for (int i = 0; i < numberOfZigs; i++) {
      final x1 = i * segmentWidth + segmentWidth / 2;
      final x2 = (i + 1) * segmentWidth;
      path
        ..lineTo(x1, size.height)
        ..lineTo(x2, size.height - 20);
    }

    path
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
