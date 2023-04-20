import 'dart:ui';

import 'package:ecomerce_php_mysql/core/services/services.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{
  Locale? language;
  MyServices myServices = Get.find();
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    String? sharedPrefsLang = myServices.sharedPreferences.getString('lang');
    if(sharedPrefsLang == 'ar'){
      language = const Locale('ar');
    } else if (sharedPrefsLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}