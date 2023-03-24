import 'package:flutter/cupertino.dart';
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
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: ColorConst.background,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: LoginScreen(),
    );
  }
}
