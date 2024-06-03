import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(
          children: [
            //Image
            Image(
                image: AssetImage(TImages.EmailVerificationImage2),
                width: THelperFunction.screenWidth()*0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & Subtitle
              Text(
                TTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>LoginScreen()), child: Text(TTexts.tContinue)),)
          ],
        ),
        ),
      ),
    );
  }
}