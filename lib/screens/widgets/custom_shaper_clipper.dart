import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
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
