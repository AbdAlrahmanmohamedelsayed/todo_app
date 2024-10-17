import 'package:flutter/material.dart';
import 'package:todo_app/core/config/page_routes_name.dart';
import 'package:todo_app/modules/main_view/main_view.dart';
import 'package:todo_app/modules/screens/onboard/onboard.dart';
import 'package:todo_app/modules/screens/auth/login/login_view.dart';
import 'package:todo_app/modules/screens/auth/signUp/signup_view.dart';
import 'package:todo_app/modules/screens/splash/splash_view.dart';

class AppRoutter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
      case PageRoutesName.onboard:
        return MaterialPageRoute(
            builder: (context) => Onboarding(), settings: settings);
      case PageRoutesName.mainView:
        return MaterialPageRoute(
            builder: (context) => MainView(), settings: settings);
      case PageRoutesName.login:
        return MaterialPageRoute(
            builder: (context) => LoginView(), settings: settings);
      case PageRoutesName.signUp:
        return MaterialPageRoute(
            builder: (context) => SignupView(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
