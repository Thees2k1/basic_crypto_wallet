import 'package:flutter/material.dart';

class RoundedGradientButton extends StatelessWidget {
  final Gradient gradient;
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Widget? child;
  final VoidCallback onPressed;

  const RoundedGradientButton({
    super.key,
    required this.gradient,
    this.width = 200,
    this.height = 50,
    this.borderRadius = const BorderRadius.all(Radius.circular(25)),
    this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
