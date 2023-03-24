import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common/widgets/app_button.dart';
import 'package:flutter_application_1/src/common/widgets/app_divider_text_field.dart';
import 'package:flutter_application_1/src/common/widgets/app_text_field.dart';
import 'package:flutter_application_1/src/constants/routes_const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 270),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: const [
                AppTextField(
                  placeholder: 'Логин или почта',
                ),
                AppDividerTextField(),
                AppTextField(
                  placeholder: 'Пароль',
                  obscureText: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppButton(
              title: 'Войти',
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppButton(
              title: 'Зарегистрироваться',
              onPressed: () {
                Navigator.pushNamed(context, RoutesConst.registerRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
