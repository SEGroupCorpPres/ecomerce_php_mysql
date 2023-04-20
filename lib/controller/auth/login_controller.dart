import 'package:ecomerce_php_mysql/core/constant/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  onTap();
}

class LoginControllerImpl extends LoginController {
  bool obscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  onTap() {
    // TODO: implement onTap
    obscure = !obscure;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  goToSignUp() {
    // TODO: implement goToSignUp
    Get.toNamed(AppRoutes.signup);
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
