import 'dart:io';

import 'package:ecomerce_php_mysql/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BtnText extends StatelessWidget {
  const BtnText({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (controller) {
        return Text(
          controller.currentPage == 0 ? 'Let\'s Go'.tr : 'Continue'.tr,
          textAlign: TextAlign.center,
          style: Platform.isIOS ? CupertinoTheme.of(context).textTheme.navTitleTextStyle : Theme.of(context).textTheme.labelLarge,
        );
      }
    );
  }
}
