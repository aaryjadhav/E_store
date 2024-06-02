import 'package:e_store/common/styles/spacing_styles.dart';
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

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark, required this.dividerText,
  });
  
  final String dividerText;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? TColors.darkGrey : TColors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
          color: dark ? TColors.darkGrey : TColors.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}

