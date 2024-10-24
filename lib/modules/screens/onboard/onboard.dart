import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/core/config/page_routes_name.dart';
import 'package:todo_app/core/theme/color_pallets.dart';

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
      background: [
        Lottie.asset(width: 350, 'assets/images/lottie/manage_task.json'),
        Lottie.asset(width: 350, 'assets/images/lottie/onboard_2.json'),
        Lottie.asset(width: 450, 'assets/images/lottie/onboard_3.json'),
      ],
      speed: 1.8,
      pageBodies: [
        FadeInRight(
          delay: const Duration(milliseconds: 500),
          child: const OnboardText(
              tittle: 'Manage your tasks',
              discrebtion:
                  'You can easily manage all of your daily tasks in DoMe for free'),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 500),
          child: const OnboardText(
              tittle: 'Create daily routine',
              discrebtion:
                  'In Uptodo  you can create your personalized routine to stay productive'),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 500),
          child: const OnboardText(
              tittle: 'Orgonaize your tasks',
              discrebtion:
                  'You can organize your daily tasks by adding your tasks into separate categories'),
        )
      ],
    );
  }
}
