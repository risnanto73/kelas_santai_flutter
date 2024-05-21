import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulai_flutter/view/home/home_page.dart';
import 'package:mulai_flutter/view/login/layout/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {
  late SharedPreferences prefs;
  checklogin(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    var statusIsLogin = await prefs.getBool('isLogin');
    if (statusIsLogin == true) {
      Get.to(HomePage(namaUser: 'Tio Risnanto'));
    } else {
      Get.to(LoginPage());
    }
  }
}
