import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common/widgets/app_button.dart';
import 'package:flutter_application_1/src/common/widgets/app_divider_text_field.dart';
import 'package:flutter_application_1/src/common/widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Регистрация'),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const AppTextField(
                    placeholder: 'Логин',
                  ),
                  const AppDividerTextField(),
                  const AppTextField(
                    placeholder: 'Телефон',
                  ),
                  const AppDividerTextField(),
                  const AppTextField(
                    placeholder: 'Почта',
                  ),
                  const AppDividerTextField(),
                  AppTextField(
                    placeholder: 'Пароль',
                    obscureText: obscurePassword,
                    suffix: CupertinoButton(
                      child: Icon(
                        obscurePassword
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton(
                title: 'Создать аккаунт',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
