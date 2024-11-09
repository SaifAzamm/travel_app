import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:ass_travel_app/features/nav_pages/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<NavBarController>()) {
      Get.lazyPut<NavBarController>(() => NavBarController());
    }
    final controller = Get.find<NavBarController>();

    return Scaffold(
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() {
        return Container(
          decoration: BoxDecoration(
            color: Palette.bottomNavBackground,
            boxShadow: [
              BoxShadow(
                color: Palette.shadow.withOpacity(0.15),
                offset: const Offset(0, -2),
                blurRadius: 8,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.updateIndex(index);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Palette.primary,
            unselectedItemColor: Palette.secondaryText,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(size: 28),
            unselectedIconTheme: const IconThemeData(size: 24),
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.apps),
              ),
              BottomNavigationBarItem(
                label: "Bar",
                icon: Icon(Icons.bar_chart),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search_outlined),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_outline),
              ),
            ],
          ),
        );
      }),
    );
  }
}
