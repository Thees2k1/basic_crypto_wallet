import 'package:basic_crypto_wallet/widgets/curved_regtangle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'circle_icon_buttons.dart';
import 'radical_background.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: SizedBox(
        height: 156,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned.fill(
                top: 0,
                child: CurvedRectangle(
                  color: AppColors.primaryBlue,
                  child: Stack(
                    children: [
                      Positioned(
                          right: -12, bottom: -17, child: RadicalBackground())
                    ],
                  ),
                )),
            Positioned(
                left: 20,
                top: 33,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text('2.70% Today',
                            style: AppTextStyles.semiBold.copyWith(
                                color: AppColors.primaryPink, fontSize: 13)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text('₹ 12.740.40',
                        style: AppTextStyles.bold
                            .copyWith(color: Colors.white, fontSize: 32)),
                  ],
                )),
            Positioned(
              left: 20,
              bottom: -17,
              child: CircleIconButton(
                size: 49,
                gradient: AppColors.pinkGradient,
                onPressed: () {},
                child: SvgPicture.asset(
                  AppAssets.addIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            Positioned(
              right: -8,
              bottom: -17,
              child: Image.asset(AppAssets.coinstackImage),
            ),
          ],
        ),
      ),
    );
  }
}
