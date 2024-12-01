import 'package:basic_crypto_wallet/constants.dart';
import 'package:basic_crypto_wallet/widgets/mover_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoverList extends StatelessWidget {
  const MoverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MoverCard(
            chartIndicator: SvgPicture.asset(AppAssets.chartLine1),
            amount: 21.58,
            percentage: 34.98,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            flex: 1,
            child: MoverCard(
              chartIndicator: SvgPicture.asset(AppAssets.chartLine2),
              amount: 35.56,
              percentage: 66.18,
            )),
      ],
    );
  }
}
