import 'package:basic_crypto_wallet/constants.dart';
import 'package:basic_crypto_wallet/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${"hello Anna".capitalize()}\n",
                style: AppTextStyles.semiBold.copyWith(
                  color: AppColors.primaryPink,
                  fontSize: 24,
                ),
              ),
              TextSpan(
                text: 'Welcome Back!'.capitalize(),
                style: AppTextStyles.bold.copyWith(
                  color: AppColors.primaryGrey,
                ),
              ),
            ],
          ),
        ),
        IntrinsicWidth(
          child: IntrinsicHeight(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightGrey,
              ),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                AppAssets.notificationIcon,
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
