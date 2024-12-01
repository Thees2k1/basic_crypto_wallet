import 'package:basic_crypto_wallet/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'curved-card.dart';

class ActionCard extends StatelessWidget {
  static const double cardHeight = 145;
  static const double cardWidth = 130;
  final Color? color;
  final Widget? trailing;
  final Widget? edgeWidget;
  final String title;

  const ActionCard(
      {super.key,
      this.color,
      this.trailing,
      required this.title,
      this.edgeWidget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: cardHeight,
        width: cardWidth,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: CurvedCard(
                color: color,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bold
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    trailing ??
                        SvgPicture.asset(
                          AppAssets.chevronRightIcon,
                          height: 12,
                          width: 15,
                        )
                  ],
                ),
              ),
            ),
            if (edgeWidget != null)
              Positioned(bottom: 57, left: 31, child: edgeWidget!),
          ],
        ));
  }
}
