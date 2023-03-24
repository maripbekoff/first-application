import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/color_const.dart';

class AppDividerTextField extends StatelessWidget {
  const AppDividerTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      indent: 16,
      color: ColorConst.gray,
      endIndent: 16,
    );
  }
}
