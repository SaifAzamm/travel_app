import 'package:ass_travel_app/core/routes/router.dart';
import 'package:ass_travel_app/features/nav_pages/view/all_categories.dart';
import 'package:ass_travel_app/features/nav_pages/view/detail_page.dart';
import 'package:ass_travel_app/features/nav_pages/view/nav_bar_view.dart';
import 'package:ass_travel_app/features/welcome/view/welcome_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRouter {
  static List<GetPage<dynamic>> routes = [
    //Splash screen
    GetPage(
      name: AppRoutes.welcomeScreen,
      page: () => const WelcomeView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    //Navbar screen
    GetPage(
      name: AppRoutes.navbarScreen,
      page: () => const NavBarView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    //Categories screen
    GetPage(
      name: AppRoutes.categoriesScreen,
      page: () => const AllCategoriesView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    GetPage(
      name: AppRoutes.detailPage,
      page: () => DetailPage(
        title: Get.parameters['title'] ?? 'Unknown',
        location: Get.parameters['location'] ?? 'Unknown',
        imageUrl: Get.parameters['imageUrl'] ?? '',
        price: double.tryParse(Get.parameters['price'] ?? '0') ?? 0.0,
        rating: double.tryParse(Get.parameters['rating'] ?? '0') ?? 0.0,
        description: Get.parameters['description'] ?? '',
      ),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 800),
    ),
  ];
}
