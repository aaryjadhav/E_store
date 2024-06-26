import 'package:e_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_store/features/utils/constants/colors.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/device/device_utility.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? TColors.primaryColor : TColors.black),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
