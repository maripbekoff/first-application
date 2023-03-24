import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const CupertinoTextField(
                  placeholder: 'Логин',
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                ),
                const Divider(
                  height: 1,
                  indent: 16,
                  color: Color(0xFFE0E6ED),
                  endIndent: 16,
                ),
                const CupertinoTextField(
                  obscureText: true,
                  placeholder: 'Телефон',
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                ),
                const Divider(
                  height: 1,
                  indent: 16,
                  color: Color(0xFFE0E6ED),
                  endIndent: 16,
                ),
                const CupertinoTextField(
                  obscureText: true,
                  placeholder: 'Почта',
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                ),
                const Divider(
                  height: 1,
                  indent: 16,
                  color: Color(0xFFE0E6ED),
                  endIndent: 16,
                ),
                CupertinoTextField(
                  obscureText: obscurePassword,
                  placeholder: 'Пароль',
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: const Color(0xFF4631D2),
              child: const Text(
                'Создать аккаунт',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
