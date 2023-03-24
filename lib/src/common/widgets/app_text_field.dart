import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.obscureText = false,
    this.placeholder,
    this.suffix,
  });

  final bool obscureText;
  final String? placeholder;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      obscureText: obscureText,
      placeholder: placeholder,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      suffix: suffix,
    );
  }
}
