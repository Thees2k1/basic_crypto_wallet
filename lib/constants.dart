import 'package:flutter/material.dart';

class AppColors {
  static const primaryPink = Color(0xffD975BB);
  static const primaryBlue = Color(0xff261863);
  static const primaryGrey = Color(0xff171532);

  static const grey = Color(0xff747384);
  static const lightGrey = Color(0xffEFF0F7);
  static const smokePurple = Color(0xffA8A3C1);
  static const indigo = Color(0xff7056B2);

  static const pinkGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFFFFF), // White (#FFF)
      Color(0xFFB971A3), // Pinkish (#B971A3)
      Color(0xFFA03E82), // Deep Pink (#A03E82)
    ],
    stops: [-0.2915, 0.2804, 0.7583], // Equivalent to -29.15%, 28.04%, 75.83%
  );

  static const purpleGradient = LinearGradient(
    colors: [
      Color(0xFF8462E1),
      Color(0xFF55389B),
      Color(0xFF351B6F),
    ],
    stops: [0.0234, 0.4261, 0.8139],
    begin: Alignment(-0.857, -0.514),
    end: Alignment(0.857, 0.514),
  );

  static const backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF131B63),
      Color(0xFF481162),
    ],
    stops: [-0.0688, 1.2277],
  );
}

class AppTextStyles {
  static const appFont = "Lato";
  static const extraBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    fontFamily: appFont,
    height: 1.2,
    letterSpacing: 1.28,
  );

  static final bold = extraBold.copyWith(
    fontWeight: FontWeight.w700,
  );
  static final semiBold = extraBold.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final medium = extraBold.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final regular = extraBold.copyWith(
    fontWeight: FontWeight.w400,
  );
}

class AppAssets {
  static const rootPath = "assets";
  static const svgPath = "$rootPath/svgs";
  static const imagePath = "$rootPath/images";
  static const animationPath = "$rootPath/lottie";
  static const chevronRightIcon = "$svgPath/arrow-right.svg";
  static const chevronRightSmallIcon = "$svgPath/arrow-right-small.svg";
  static const notificationIcon = "$svgPath/notifications-outline.svg";
  static const addIcon = "$svgPath/plus-outlined.svg";
  static const chartLine1 = "$svgPath/chart-1.svg";
  static const chartLine2 = "$svgPath/chart-2.svg";
  static const swapIcon = "$svgPath/swap-fill.svg";
  static const appBanner = "$imagePath/app_banner.png";
  static const actionIcon1 = "$imagePath/action-icon-1.png";
  static const actionIcon2 = "$imagePath/action-icon-2.png";
  static const actionIcon3 = "$imagePath/action-icon-3.png";
  static const blockchainCloudImage = "$imagePath/blockchain-cloud.png";
  static const coinstackImage = "$imagePath/coin-stack.png";
  static const loadingAnimation = "$animationPath/loading.json";
}

class AppRoutes {
  static const String landing = '/';
  static const String home = '/home';
}
