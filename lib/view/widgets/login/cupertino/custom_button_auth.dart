import 'dart:io';

import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;

  const CustomButtonAuth({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10,
      ),
      height: null,
      color: Colors.transparent,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 0),
        color: AppColors.primaryColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
