import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/core/config/page_routes_name.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailControlar = TextEditingController();
  TextEditingController passwordControlar = TextEditingController();
  bool isvisibility = true;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Login',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.primaryColor),
              ),
              Lottie.asset(width: 350, 'assets/images/lottie/login.json'),
              const SizedBox(
                height: 30,
              ),
              Text(
                'welcome back!',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: theme.primaryColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailControlar,
                cursorColor: theme.primaryColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    size: 22,
                    color: theme.primaryColor,
                  ),
                  hintText: 'enter your email address',
                  hintStyle: theme.textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 1, color: theme.primaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 1, color: theme.primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 2, color: theme.primaryColor)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passwordControlar,
                cursorColor: theme.primaryColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility,
                    size: 22,
                    color: theme.primaryColor,
                  ),
                  hintText: 'enter your Password ',
                  hintStyle: theme.textTheme.bodySmall,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 1, color: theme.primaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 1, color: theme.primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 2, color: theme.primaryColor)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, PageRoutesName.mainView);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Login',
                        style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 22,
                        color: Color(0xffffffff),
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
