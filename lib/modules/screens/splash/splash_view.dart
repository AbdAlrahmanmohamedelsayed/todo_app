import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/config/page_routes_name.dart';
import 'package:todo_app/core/theme/color_pallets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, PageRoutesName.login);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPallets.backGroundColorLight,
      child: FadeInDown(
          delay: const Duration(seconds: 1),
          child: Image.asset('assets/images/logo.png')),
    );
  }
}
