import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final String? image;
  final double? imageScale;
  final String? title;
  final String? describtion;
  const OnboardingScreen({
    super.key,
    this.image,
    this.title,
    this.describtion,
    this.imageScale,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image!,
            scale: imageScale!,
          ),
          Text(
            title!,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            // "Fresh meals delivered straight \nto your door."
            describtion!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white30,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
