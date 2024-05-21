import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mulai_flutter/view/splashscreen/splahscreen_controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(initState: (state) {
      controller.checklogin(context);
    }, builder: (context) {
      return Container(
        color: Colors.blue,
        child: Center(
          child: FlutterLogo(
            size: 300,
          ),
        ),
      );
    });
  }
}
