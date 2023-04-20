import 'package:ecomerce_php_mysql/controller/auth/login_controller.dart';
import 'package:ecomerce_php_mysql/controller/auth/sign_up_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BuildCupertinoTextField extends StatelessWidget {
  const BuildCupertinoTextField({
    super.key,
    required this.obscureText,
    required this.placeHolder,
    required this.onTap,
    required this.controller,
    required this.suffix,
  });

  final bool? obscureText;
  final String? placeHolder;
  final void Function()? onTap;
  final TextEditingController? controller;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpControllerImpl>(
      builder: (context) {
        return CupertinoTextField(
          controller: controller,
          obscureText: obscureText ?? false,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
          placeholder: placeHolder,
          suffix: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: suffix,
          ),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(24),
          ),
        );
      },
    );
  }
}
