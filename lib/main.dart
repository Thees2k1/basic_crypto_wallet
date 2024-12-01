import 'package:basic_crypto_wallet/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.landing: (context) => const LandingPage(), // Default route
        AppRoutes.home: (context) => const HomePage(
              title: "Crypto wallet",
            ),
      },

      initialRoute: AppRoutes.landing, // Set the initial route
    );
  }
}
