import 'package:ass_travel_app/features/nav_pages/controller/home_controller.dart';
import 'package:ass_travel_app/features/nav_pages/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<HomeController>()) {
      Get.lazyPut<HomeController>(() => HomeController());
    }
    final controller = Get.find<HomeController>();
    return SizedBox(
      height: 110.h, // Increased height for spacing
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          final category = controller.categories[index];
          return CategoryCard(
            icon: category["icon"],
            label: category["label"],
            onTap: () {
              // Add your onTap action here, e.g., navigate or show toast
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${category["label"]}')),
              );
            },
          );
        },
      ),
    );
  }
}
