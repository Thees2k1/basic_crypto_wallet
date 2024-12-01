import 'package:flutter/material.dart';

class RadicalBackground extends StatelessWidget {
  const RadicalBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return OuterCirle(
      size: 168,
      padding: const EdgeInsets.all(19),
      color: const Color.fromRGBO(255, 255, 255, 0.04),
      child: OuterCirle(
        color: const Color.fromRGBO(255, 255, 255, 0.04),
        padding: const EdgeInsets.all(19),
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(255, 255, 255, 0.04)),
        ),
      ),
    );
  }
}

class OuterCirle extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final double? size;
  final Widget? child;
  final Color? color;
  const OuterCirle(
      {super.key, this.padding, this.child, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: child);
  }
}
