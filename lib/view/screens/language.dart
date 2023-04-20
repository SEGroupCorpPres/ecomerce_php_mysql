import 'dart:io';

import 'package:ecomerce_php_mysql/core/constant/app_routes.dart';
import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:ecomerce_php_mysql/core/localization/change_local.dart';
import 'package:ecomerce_php_mysql/view/widgets/language/language_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Choose language'.tr,
              style: Platform.isIOS ? CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle : Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            LanguageButton(
              child: Text(
                'Ar',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                controller.changeLang('ar');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
            LanguageButton(
              child: Text(
                'En',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                controller.changeLang('en');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
