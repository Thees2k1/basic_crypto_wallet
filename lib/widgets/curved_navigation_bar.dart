import 'package:basic_crypto_wallet/constants.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavigationBar extends StatefulWidget {
  final Color backgroundColor;
  final double height;
  final ValueChanged<int> onChange;
  final int selectedIndex;

  const CurvedBottomNavigationBar({
    super.key,
    this.backgroundColor = AppColors.primaryBlue,
    this.height = 80.0,
    required this.onChange,
    this.selectedIndex = 0,
  });

  @override
  _CurvedBottomNavigationBarState createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState extends State<CurvedBottomNavigationBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    widget.onChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(double.infinity, widget.height),
            painter: CurvePainter(color: widget.backgroundColor),
          ),
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, "Home", 0),
                _buildNavItem(Icons.account_balance_wallet, "Wallets", 1),
                const SizedBox(width: 80), // Leave space for FAB
                _buildNavItem(Icons.bar_chart, "Market", 2),
                _buildNavItem(Icons.settings, "Settings", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = index == currentIndex;
    return GestureDetector(
      onTap: () => _onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? AppColors.primaryPink
                : Colors.white.withOpacity(0.6),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? AppColors.primaryPink
                  : Colors.white.withOpacity(0.6),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  final double borderRadius;
  final Color color;
  const CurvePainter({this.borderRadius = 20.0, this.color = Colors.white});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, borderRadius); //15,2

    path.quadraticBezierTo(0, 0, borderRadius, 0);
    path.quadraticBezierTo(size.width * 0.15, 0, size.width * 0.30, 2);

    path.quadraticBezierTo(size.width * 0.35 + size.width * 0.015,
        size.height * 0.05, size.width * 0.40, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.85,
        size.width * 0.60, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.65 - size.width * 0.015,
        size.height * 0.05, size.width * 0.70, 2);
    path.quadraticBezierTo(size.width * 0.85, 2, size.width - borderRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, borderRadius);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
