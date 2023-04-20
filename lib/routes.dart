import 'package:ecomerce_php_mysql/core/constant/app_routes.dart';
import 'package:ecomerce_php_mysql/view/screens/authentication/login.dart';
import 'package:ecomerce_php_mysql/view/screens/authentication/sign_up.dart';
import 'package:ecomerce_php_mysql/view/screens/onboarding.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const SignUp(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
};
