import 'package:ecomerce_php_mysql/controller/auth/sign_up_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BuildIcon extends StatelessWidget {
  const BuildIcon({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpControllerImpl>(
      builder: (controller) {
        if (kDebugMode) {
          print('${controller.obscure} + icon');
        }
        return GestureDetector(
          onTap: onTap,
          child: Icon(
            controller.obscure ? CupertinoIcons.lock : CupertinoIcons.lock_open,
            color: Colors.grey,
          ),
        );
      },
    );
  }
}