import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/models/shop.dart';
import 'package:minimal_ecommerce_app_yt/pages/cart_page.dart';
import 'package:minimal_ecommerce_app_yt/pages/intro_page.dart';
import 'package:minimal_ecommerce_app_yt/pages/shop_page.dart';
import 'package:minimal_ecommerce_app_yt/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Provider package setup for state management
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,

      // routes for navigation
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': ((context) => const CartPage()),
      },
    );
  }
}
