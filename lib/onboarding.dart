import 'package:assignment15_screen/custom_onboarding.dart';
import 'package:assignment15_screen/home.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        const Scaffold(
          backgroundColor: Color(0xff232227),
          body: OnboardingScreen(
            image: "assets/images/foodApp.png",
            title: "Fresh Food",
            describtion: "Fresh meals delivered straight \nto your door.",
            imageScale: 15,
          ),
        ),
        const Scaffold(
          backgroundColor: Color(0xff232227),
          body: OnboardingScreen(
            image: "assets/images/location.png",
            imageScale: 5,
            title: "Live Tracking",
            describtion: "Track your order in real-time.",
          ),
        ),
        const Scaffold(
          backgroundColor: const Color(0xff232227),
          body: OnboardingScreen(
            image: "assets/images/delivery.png",
            imageScale: 14,
            title: "Fast Delivery",
            describtion: "From restaurant you with\n care and speed.",
          ),
        ),
        Scaffold(
          backgroundColor: const Color(0xff232227),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const OnboardingScreen(
                image: "assets/images/order.png",
                imageScale: 14,
                title: "Ready to order?\n Let's get started!",
                describtion: "Pick your favorites and customize\n your order.",
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      backgroundColor: Colors.grey.shade200,
                      fixedSize: const Size.fromWidth(140)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
