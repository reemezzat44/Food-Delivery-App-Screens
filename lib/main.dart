import 'package:assignment15_screen/onBoarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
