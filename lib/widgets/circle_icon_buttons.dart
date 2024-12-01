import 'package:basic_crypto_wallet/constants.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Widget child;
  final double size;
  final Gradient gradient;
  final VoidCallback onPressed;

  const CircleIconButton(
      {required this.child,
      required this.size,
      required this.gradient,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, gradient: AppColors.pinkGradient),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
