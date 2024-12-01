import 'package:basic_crypto_wallet/constants.dart';
import 'package:basic_crypto_wallet/widgets/rounded_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppAssets.blockchainCloudImage),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Convert cash into\ncrypto, simply\n",
                      style: AppTextStyles.bold),
                  TextSpan(
                      text: "\n",
                      style: AppTextStyles.bold.copyWith(height: 1)),
                  TextSpan(
                    text:
                        "Connect your bank account and get\naccess to more than 76000 crypto\ncurrencies and tokens.",
                    style: AppTextStyles.regular.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            RoundedGradientButton(
              gradient: AppColors.pinkGradient,
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              },
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              width: 198,
              height: 83,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 57,
                    width: 57,
                    decoration: const BoxDecoration(
                      gradient: AppColors.purpleGradient,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      AppAssets.chevronRightSmallIcon,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Get Started",
                    style: AppTextStyles.extraBold.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
