import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.LoginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSizes.sm),
                  Text( TTexts.LoginSubTitle,style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),

              //Form
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
