import 'dart:io';

import 'package:ecomerce_php_mysql/controller/auth/sign_up_controller.dart';
import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:ecomerce_php_mysql/generated/assets.dart';
import 'package:ecomerce_php_mysql/view/widgets/sign_up/cupertino/build_cupertino_text_field.dart';
import 'package:ecomerce_php_mysql/view/widgets/sign_up/cupertino/build_icon.dart';
import 'package:ecomerce_php_mysql/view/widgets/login/cupertino/custom_button_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUp extends GetView<StatelessWidget> {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _buildCupertinoPage(context) : _buildMaterialPage(context);
  }

  Widget _buildCupertinoPage(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: Text(
          'Sign Up'.tr,
          style: CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(color: AppColors.primaryColor, fontSize: 23),
        ),
        border: const Border(),
      ),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildMaterialPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sign Up'.tr,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    SignUpControllerImpl controllerImpl = Get.put(SignUpControllerImpl());
    Future<void> onTap() async {
      await controllerImpl.onTap();
      if (kDebugMode) {
        print(controllerImpl.obscure);
      }
    }

    return GetBuilder<SignUpControllerImpl>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Sign up with your email and password or continue with social media'.tr,
                  style: Platform.isIOS
                      ? CupertinoTheme.of(context).textTheme.tabLabelTextStyle.copyWith(fontSize: 14)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              BuildCupertinoTextField(
                obscureText: false,
                controller: controller.userNameController,
                placeHolder: 'Enter your username'.tr,
                suffix: const Icon(
                  CupertinoIcons.person,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              BuildCupertinoTextField(
                obscureText: false,
                controller: controller.phoneController,
                placeHolder: 'Enter your phone'.tr,
                suffix: const Icon(
                  CupertinoIcons.phone,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              BuildCupertinoTextField(
                obscureText: false,
                controller: controller.emailController,
                placeHolder: 'Enter your email'.tr,
                suffix: const Icon(
                  CupertinoIcons.envelope,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              BuildCupertinoTextField(
                controller: controller.passwordController,
                obscureText: controller.obscure,
                placeHolder: 'Enter your password'.tr,
                suffix: BuildIcon(onTap: onTap),
                onTap: onTap,
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(
                child: Text('Sign Up'.tr),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Have an account ?'.tr),
                  CupertinoButton(
                    child: Text(
                      'Sign In'.tr,
                      style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                    ),
                    onPressed: () {
                      controller.goToLogin();
                    },
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    child: SvgPicture.asset(Assets.svgGoogle, width: 50,),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    child: SvgPicture.asset(Assets.svgApple, width: 40,),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    child: SvgPicture.asset(Assets.svgMeta, width: 40,),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
