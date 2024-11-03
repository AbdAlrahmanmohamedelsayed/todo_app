import 'package:flutter/material.dart';
import 'package:todo_app/core/config/app_Routter.dart';
import 'package:todo_app/core/config/page_routes_name.dart';
import 'package:todo_app/core/theme/applecation_theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App Route',
      theme: AoolecationThemeManager.lightThemeData,
      initialRoute: PageRoutesName.initial,
      onGenerateRoute: AppRoutter.onGenerateRoute,
    );
  }
}
