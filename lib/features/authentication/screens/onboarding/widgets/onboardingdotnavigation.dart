import 'package:e_store/features/utils/constants/colors.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/device/device_utility.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBottomNavigation extends StatelessWidget {
  const OnBoardingBottomNavigation({
    super.key,
  });
   
  @override
  Widget build(BuildContext context) {
       final dark = THelperFunction.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect:  ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
        ));
  }
}
