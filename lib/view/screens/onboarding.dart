import 'dart:io';

import 'package:ecomerce_php_mysql/controller/on_boarding_controller.dart';
import 'package:ecomerce_php_mysql/view/widgets/onboarding/btn_text.dart';
import 'package:ecomerce_php_mysql/view/widgets/onboarding/custom_button.dart';
import 'package:ecomerce_php_mysql/view/widgets/onboarding/custom_slider.dart';
import 'package:ecomerce_php_mysql/view/widgets/onboarding/dot_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends GetView<OnBoardingControllerImpl> {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: CustomSliderOnBoarding(),
            ),
            Column(
              children: const [
                CustomDotControllerOnBoarding(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButtonOnBoarding(
                  onPressed: continueBtn,
                  child: const BtnText(),
                ),
                Platform.isIOS
                    ? CupertinoButton(
                        onPressed: skipButton,
                        child: Text(
                          'Skip'.tr,
                          style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                        ),
                      )
                    : TextButton(
                        onPressed: skipButton,
                        child: Text(
                          'Skip'.tr,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> continueBtn() async {
    controller.next();
  }

  Future<void> skipButton() async {
    controller.skip();
  }
}
