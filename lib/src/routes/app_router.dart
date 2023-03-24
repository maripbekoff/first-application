import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/routes_const.dart';
import 'package:flutter_application_1/src/screens/login/login_screen.dart';
import 'package:flutter_application_1/src/screens/register/register_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConst.loginRoute:
        return MaterialPageRoute(
          builder: ((context) => const LoginScreen()),
        );
      case RoutesConst.registerRoute:
        return MaterialPageRoute(
          builder: ((context) => const RegisterScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Данный роут не существует!'),
            ),
          ),
        );
    }
  }
}
