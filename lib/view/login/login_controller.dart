import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulai_flutter/view/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  String password = '';
  TextEditingController teEmail = TextEditingController();
  TextEditingController tePassword = TextEditingController();
  // Obtain shared preferences.
  late SharedPreferences prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  signIn(BuildContext context) async {
    if (tePassword.text == password) {
      await prefs.setBool('isLogin', true);
      Get.to(HomePage(namaUser: 'Tio Risnantio'));
    } else {
      print('Salah');
    }
  }
}
