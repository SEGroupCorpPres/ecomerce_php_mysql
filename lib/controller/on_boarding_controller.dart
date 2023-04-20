import 'package:ecomerce_php_mysql/core/constant/app_routes.dart';
import 'package:ecomerce_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();

  skip();

  onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  String btnText = 'Let\'s Go'.tr;

  @override
  next() {
    // TODO: implement next
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  skip() {
    // TODO: implement skip
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  onPageChanged(int index) {
    // TODO: implement onPageChanged
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
