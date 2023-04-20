import 'package:ecomerce_php_mysql/core/constant/imageasset.dart';
import 'package:ecomerce_php_mysql/data/model/onboarding.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Choose Product',
    body: 'We Have a 100k + Products.\n Choose Your product from our E-Commerce shop',
    image: AppImageAsset.onBoardingOne,
  ),
  OnBoardingModel(
    title: 'Easy & Safe Payment',
    body: 'Easy Checkout & Safe Payment method.\n Trusted by our Customers\n from all over the world',
    image: AppImageAsset.onBoardingTwo,
  ),
  OnBoardingModel(
    title: 'Tack your Order',
    body: 'Best Tracker has been Used For\n Track your order. You\'ll know where\n your product is at the moment',
    image: AppImageAsset.onBoardingThree,
  ),
  OnBoardingModel(
    title: 'Fast Delivery',
    body: 'Reliable And Fast Delivery.\n We Deliver your product the fastest\n way possible',
    image: AppImageAsset.onBoardingFour,
  ),
];
