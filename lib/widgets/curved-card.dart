import 'package:flutter/material.dart';

class CurvedCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? curveHeight;
  final Widget? child;
  const CurvedCard(
      {super.key,
      this.color,
      this.height,
      this.width,
      this.curveHeight,
      this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedClipper(),
      child: Container(
        height: height,
        width: width,
        color: color,
        child: child,
      ),
    );
  }
}

class CurvedClipper extends CustomClipper<Path> {
  final double cornerRadius;
  final double curveHeight;
  CurvedClipper({this.cornerRadius = 30, this.curveHeight = 4});

  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start at the top-left corner
    path.moveTo(0, cornerRadius + curveHeight);

    // Top-left corner
    path.quadraticBezierTo(
      0,
      curveHeight,
      cornerRadius,
      curveHeight,
    );

    // Top edge with slight curve
    path.quadraticBezierTo(
      size.width / 2,
      -curveHeight * 2,
      size.width - cornerRadius,
      curveHeight,
    );

    // Top-right corner
    path.quadraticBezierTo(
      size.width,
      curveHeight,
      size.width,
      cornerRadius + curveHeight,
    );

    // Right side
    path.lineTo(size.width, size.height - cornerRadius - curveHeight);

    // Bottom-right corner
    path.quadraticBezierTo(
      size.width,
      size.height - curveHeight,
      size.width - cornerRadius,
      size.height - curveHeight,
    );

    // Bottom edge with slight curve
    path.quadraticBezierTo(
      size.width / 2,
      size.height + curveHeight * 2,
      cornerRadius,
      size.height - curveHeight,
    );

    // Bottom-left corner
    path.quadraticBezierTo(
      0,
      size.height - curveHeight,
      0,
      size.height - cornerRadius - curveHeight,
    );

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
