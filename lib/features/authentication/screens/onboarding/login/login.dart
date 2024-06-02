import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/common/widgets/loginin_signup/social_icons.dart';
import 'package:e_store/common/widgets/loginin_signup/form_divider.dart';
import 'package:e_store/features/authentication/screens/onboarding/login/widgets/login_form.dart';
import 'package:e_store/features/authentication/screens/onboarding/login/widgets/login_header.dart';
import 'package:e_store/features/utils/constants/colors.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Titile & Sub-title
              LoginHeader(dark: dark),
              // const SizedBox(
              //   height: TSizes.defaultSpace,
              // ),
              //Form
              LoginForm(),
              //Divider
              FormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!,),
              SizedBox(height: TSizes.spaceBtwSections,),
              //Footer
              SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}

