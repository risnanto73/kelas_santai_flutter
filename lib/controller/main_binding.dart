import 'package:get/get.dart';
import 'package:mulai_flutter/view/home/home_controller.dart';
import 'package:mulai_flutter/view/login/login_controller.dart';
import 'package:mulai_flutter/view/splashscreen/splahscreen_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
    Get.put(LoginController());
    Get.put(SplashScreenController());
  }
}
