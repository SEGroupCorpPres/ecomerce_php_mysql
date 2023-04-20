import 'package:ecomerce_php_mysql/core/constant/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();

  goToLogin();

  onTap();
}

class SignUpControllerImpl extends SignUpController {
  bool obscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController userNameController;
  late TextEditingController phoneController;

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
    userNameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  goToLogin() {
    // TODO: implement goToSignUp
    Get.toNamed(AppRoutes.login);
  }

  @override
  signup() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
