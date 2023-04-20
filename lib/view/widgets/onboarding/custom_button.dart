import 'dart:io';

import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(top: 100),
      height: Platform.isIOS ? null : 40,
      color: Platform.isIOS ? Colors.transparent : AppColors.primaryColor,
      child: Platform.isIOS
          ? CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 0),
              color: AppColors.primaryColor,
              onPressed: onPressed,
              child: child!,
            )
          : MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 0),
              textColor: Colors.white,
              onPressed: onPressed,
              color: AppColors.primaryColor,
              child: child!,
            ),
    );
  }
}
