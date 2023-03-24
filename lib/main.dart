import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/color_const.dart';
import 'package:flutter_application_1/src/routes/app_router.dart';
import 'package:flutter_application_1/src/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 1990,
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        scaffoldBackgroundColor: ColorConst.background,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: const LoginScreen(),
    );
  }
}
