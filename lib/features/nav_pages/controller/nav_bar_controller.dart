import 'package:ass_travel_app/features/nav_pages/view/bar_item_view.dart';
import 'package:ass_travel_app/features/nav_pages/view/home_view.dart';
import 'package:ass_travel_app/features/nav_pages/view/profile_view.dart';
import 'package:ass_travel_app/features/nav_pages/view/search_view.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  RxList pages = [
    const HomeView(),
    const BarItemView(),
    const SearchView(),
    const ProfileView(),
  ].obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
