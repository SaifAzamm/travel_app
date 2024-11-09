import 'package:ass_travel_app/features/nav_pages/controller/detail_controller.dart';
import 'package:ass_travel_app/features/nav_pages/controller/home_controller.dart';
import 'package:ass_travel_app/features/nav_pages/controller/nav_bar_controller.dart';
import 'package:ass_travel_app/features/welcome/controller/welcome_controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    Get.lazyPut<NavBarController>(() => NavBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<DetailPageController>(() => DetailPageController());
  }
}
