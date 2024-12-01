import 'package:basic_crypto_wallet/constants.dart';
import 'package:flutter/material.dart';

class MoverCard extends StatelessWidget {
  final Widget chartIndicator;
  final double? percentage;
  final double? amount;
  const MoverCard(
      {super.key, required this.chartIndicator, this.percentage, this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color.fromARGB(255, 229, 229, 235),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
        child: Stack(
          children: [
            Column(
              children: [
                Text(
                  "+$percentage%",
                  style: AppTextStyles.extraBold.copyWith(
                    fontSize: 16,
                    color: AppColors.primaryGrey,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "BTC",
                        style: AppTextStyles.bold.copyWith(
                          color: AppColors.primaryGrey,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '\$$amount',
                        style: AppTextStyles.regular.copyWith(
                          color: AppColors.primaryGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 0,
              child: chartIndicator,
            ),
          ],
        ),
      ),
    );
  }
}
