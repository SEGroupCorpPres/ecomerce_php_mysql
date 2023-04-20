import 'dart:io';

import 'package:ecomerce_php_mysql/controller/on_boarding_controller.dart';
import 'package:ecomerce_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, item) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            onBoardingList[item].title!.toString().tr,
            style: Platform.isIOS ? CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle : Theme.of(context).textTheme.headlineLarge,
          ),
          Image.asset(
            onBoardingList[item].image!,
            fit: BoxFit.fill,
            width: 200,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[item].body!.toString().tr,
                  textAlign: TextAlign.center,
                  style: Platform.isIOS ? CupertinoTheme.of(context).textTheme.actionTextStyle : Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
