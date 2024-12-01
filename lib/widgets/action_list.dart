import 'package:basic_crypto_wallet/constants.dart';
import 'package:basic_crypto_wallet/widgets/action_card.dart';
import 'package:flutter/material.dart';

class ActionList extends StatelessWidget {
  const ActionList({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        children: [
          ActionCard(
            edgeWidget: Image.asset(
              AppAssets.actionIcon1,
              width: 107,
              height: 103,
            ),
            title: "Receive",
            color: AppColors.primaryPink,
          ),
          const SizedBox(
            width: 16,
          ),
          ActionCard(
            edgeWidget: Image.asset(AppAssets.actionIcon2),
            title: "Send",
            color: AppColors.indigo,
          ),
          const SizedBox(
            width: 16,
          ),
          ActionCard(
              edgeWidget: Image.asset(AppAssets.actionIcon1),
              title: "Swap",
              color: AppColors.smokePurple),
        ],
      ),
    );
  }
}
