import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class OnboardImage extends StatelessWidget {
  final String imagepath;
  const OnboardImage({required this.imagepath, super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Image.asset(
        imagepath,
        height: 400,
      ),
    );
  }
}
