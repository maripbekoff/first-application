import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/constants/color_const.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: ColorConst.primary,
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
