import 'package:basic_crypto_wallet/extentions.dart';
import 'package:basic_crypto_wallet/widgets/mover_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../widgets/action_list.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/balance_card.dart';
import '../widgets/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        title: const AppBarTitle(),
      ),
      bottomNavigationBar: CurvedBottomNavigationBar(onChange: (index) {}),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        width: 74,
        height: 74,
        decoration: const BoxDecoration(
          gradient: AppColors.purpleGradient,
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(AppAssets.swapIcon),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 55,
          ),
          const BalanceCard(),
          const SizedBox(
            height: 49,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'actions'.capitalize(),
              style: AppTextStyles.extraBold
                  .copyWith(fontSize: 28, color: AppColors.primaryGrey),
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: ActionList(),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'top movers'.capitalizeAll(),
              style: AppTextStyles.extraBold
                  .copyWith(fontSize: 28, color: AppColors.primaryGrey),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.0),
            child: MoverList(),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
