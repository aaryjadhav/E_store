import 'package:e_store/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give default equal space on all sides in all screen
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(TImages.EmailVerificationImage1),
                width: THelperFunction.screenWidth(),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & Subtitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                'support@aaryjadhav.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              

              //Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:()=> Get.to(()=>SucessScreen()), child: Text(TTexts.tContinue),),),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: Text(TTexts.resendEmail),),),

              
            ],
          ),
        ),
      ),
    );
  }
}
