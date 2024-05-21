import 'package:flutter/material.dart';
import 'package:mulai_flutter/controller/main_binding.dart';
import 'package:mulai_flutter/view/home/home_page.dart';
import 'package:mulai_flutter/view/login/layout/login_page.dart';
import 'package:mulai_flutter/theme.dart';
import 'package:mulai_flutter/view/main_page.dart';
import 'package:get/get.dart';
import 'package:mulai_flutter/view/splashscreen/splashscreen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => HomePage(
              namaUser: '',
            ),
      },
      initialBinding: MainBinding(),
      home: SplashScreenPage(),
      // initialRoute: '/loginPage',
    );
  }
}
