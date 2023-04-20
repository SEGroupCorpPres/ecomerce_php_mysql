import 'package:ecomerce_php_mysql/controller/on_boarding_controller.dart';
import 'package:ecomerce_php_mysql/core/constant/color.dart';
import 'package:ecomerce_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                curve: Curves.easeInOut,
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 300),
                width: context.currentPage == index ? 20 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
