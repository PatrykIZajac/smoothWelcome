import 'package:flutter/material.dart';
import 'package:smooth_welcome/constants/colors.dart';

Color getColorFromIndex(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppColors.slide1;
    case 1:
      return AppColors.slide2;
    case 2:
      return AppColors.slide3;
    default:
      return AppColors.slide1;
  }
}

String getCurrentTitle(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return 'Custom-coded';
    case 1:
      return 'Mobile-optimized';
    case 2:
      return 'Stunning design';
    default:
      return '';
  }
}

String getCurrentSubtext(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return 'We don`t use any mass market ladning page builder, like Unbounce. All custom work here!';
    case 1:
      return 'We know how much time people sepnd on their phones. We design and build with that mind.';
    case 2:
      return 'We take brand assets, spice them up and design with your customer in mind.';
    default:
      return '';
  }
}

void navigateToNextPage(
  int currentIndex,
  PageController controller,
) =>
    currentIndex != 2
        ? controller.nextPage(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.elasticOut,
          )
        : controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 1500),
            curve: Curves.elasticOut,
          );

Tween<double> getProgressOnCurrentIndex(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return Tween<double>(
        begin: 0,
        end: 0.5,
      );
    case 1:
      return Tween<double>(
        begin: 0.5,
        end: 0.75,
      );
    case 2:
      return Tween<double>(
        begin: 0.75,
        end: 1,
      );
    default:
      return Tween<double>(
        begin: 0,
        end: 0.5,
      );
  }
}

Icon getProperIcon(int currentIndex) => currentIndex != 2
    ? const Icon(
        Icons.navigate_next,
        key: ValueKey('next_icon'),
        color: Colors.white,
      )
    : const Icon(
        Icons.done,
        key: ValueKey('done_icon'),
        color: Colors.white,
      );

void navigationViaButton(
  int currentIndex,
  PageController controller,
) =>
    currentIndex != 2
        ? controller.nextPage(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutCirc,
          )
        //FOR TESTING WELCOME FLOW PURPOSES :)
        : controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 2000),
            curve: Curves.easeOutExpo,
          );
