import 'dart:io';

import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LanguageButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;

  const LanguageButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 100),
      padding: const EdgeInsets.all(10),
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
