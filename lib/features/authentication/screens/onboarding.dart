import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizotal scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                      width: THelperFunction.screenWidth() * 0.8,
                      height: THelperFunction.screenHeight() * 0.6,
                      image: const AssetImage(TImages.OnBoardingImage1)),
                  Text(
                    TTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    TTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )

          //Skip button

          //Dot navigation SmoothPageIndicator
        ],
      ),
    );
  }
}
