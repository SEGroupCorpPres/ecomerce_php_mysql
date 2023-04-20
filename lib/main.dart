import 'dart:io';

import 'package:ecomerce_php_mysql/core/localization/change_local.dart';
import 'package:ecomerce_php_mysql/core/localization/translation.dart';
import 'package:ecomerce_php_mysql/core/services/services.dart';
import 'package:ecomerce_php_mysql/routes.dart';
import 'package:ecomerce_php_mysql/view/screens/authentication/login.dart';
import 'package:ecomerce_php_mysql/view/screens/authentication/sign_up.dart';
import 'package:ecomerce_php_mysql/view/screens/language.dart';
import 'package:ecomerce_php_mysql/view/screens/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constant/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? getCupertinoApp() : getMaterialApp();
  }

  Widget getCupertinoApp() {
    LocalController localController = Get.put(LocalController());
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: localController.language,
      title: 'Flutter Demo',
      // home: Login(),
      home: SignUp(),
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        textTheme: CupertinoTextThemeData(
          navLargeTitleTextStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          navActionTextStyle: GoogleFonts.roboto(),
          navTitleTextStyle: GoogleFonts.roboto(),
          tabLabelTextStyle: GoogleFonts.roboto(),
          actionTextStyle: GoogleFonts.roboto(
            height: 2,
            color: AppColors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: routes,
    );
  }

  Widget getMaterialApp() {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: localController.language,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          bodyLarge: GoogleFonts.roboto(
            height: 2,
            color: AppColors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: GoogleFonts.roboto(),
          labelLarge: GoogleFonts.roboto(),
        ),
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
