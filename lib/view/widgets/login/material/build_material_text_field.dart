import 'package:ecomerce_php_mysql/controller/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BuildMaterialTextField extends StatelessWidget {
  const BuildMaterialTextField({
    super.key,
    required this.obscureText,
    required this.placeHolder,
    required this.onTap,
    required this.controller,
    required this.suffix,
  });

  final bool obscureText;
  final String? placeHolder;
  final void Function()? onTap;
  final TextEditingController? controller;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllerImpl>(
      builder: (context) {
        return TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            suffix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: suffix,
            ),
            hintText: placeHolder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
          ),
        );
      },
    );
  }
}
