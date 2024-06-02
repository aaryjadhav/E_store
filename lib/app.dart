import 'package:e_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_store/features/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

//Use this class to setup themes, initial bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:OnBoardingScreen(),
    );
  }
}
