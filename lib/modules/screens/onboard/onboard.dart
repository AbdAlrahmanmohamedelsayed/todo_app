import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:todo_app/core/config/page_routes_name.dart';
import 'package:todo_app/core/theme/color_pallets.dart';
import 'package:todo_app/modules/screens/onboard/widgets/onboard_image.dart';
import 'package:todo_app/modules/screens/onboard/widgets/onboard_text.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return OnBoardingSlider(
      finishButtonText: 'Login',
      onFinish: () {
        Navigator.pushReplacementNamed(context, PageRoutesName.login);
      },
      finishButtonStyle: FinishButtonStyle(
          backgroundColor: theme.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      skipTextButton: Text('Skip',
          style: theme.textTheme.bodySmall?.copyWith(
            fontSize: 22,
            color: theme.primaryColor,
          )),
      trailing: Text('SignUp',
          style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: theme.primaryColor)),
      trailingFunction: () {
        Navigator.pushReplacementNamed(context, PageRoutesName.signUp);
      },
      controllerColor: theme.primaryColor,
      totalPage: 3,
      headerBackgroundColor: ColorPallets.backGroundColorLight,
      pageBackgroundColor: ColorPallets.backGroundColorLight,
      centerBackground: true,
      background: const [
        OnboardImage(imagepath: 'assets/images/oboard_1.png'),
        OnboardImage(imagepath: 'assets/images/oboard_2.png'),
        OnboardImage(imagepath: 'assets/images/oboard_3.png'),
      ],
      speed: 1.8,
      pageBodies: const [
        OnboardText(
            tittle: 'Manage your tasks',
            discrebtion:
                'You can easily manage all of your daily tasks in DoMe for free'),
        OnboardText(
            tittle: 'Create daily routine',
            discrebtion:
                'In Uptodo  you can create your personalized routine to stay productive'),
        OnboardText(
            tittle: 'Orgonaize your tasks',
            discrebtion:
                'You can organize your daily tasks by adding your tasks into separate categories')
      ],
    );
  }
}
