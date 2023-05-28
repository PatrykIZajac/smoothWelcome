import 'package:flutter/material.dart';
import 'package:smooth_welcome/constants/animations.dart';
import 'package:smooth_welcome/welcome/widgets/welcome_slide.dart';

class ContainerWithImage extends StatelessWidget {
  const ContainerWithImage({
    required this.currentColor,
    required this.controller,
    super.key,
  });

  final Color currentColor;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppAnimations.defaultDuration,
      decoration: BoxDecoration(
        color: currentColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          WelcomeSlide(
            path: 'slide_1.png',
          ),
          WelcomeSlide(
            path: 'slide_2.png',
          ),
          WelcomeSlide(
            path: 'slide_3.png',
          ),
        ],
      ),
    );
  }
}
