import 'package:ass_travel_app/features/nav_pages/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:get/get.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<HomeController>()) {
      Get.lazyPut<HomeController>(() => HomeController());
    }
    final controller = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Categories",
          style: TextStyle(color: Palette.primaryText),
        ),
        backgroundColor: Palette.cardBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: Palette.primary),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: ListView.separated(
          itemCount: controller.categories.length,
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemBuilder: (context, index) {
            final category = controller.categories[index];
            return Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Palette.cardBackground,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Palette.shadow.withOpacity(0.1),
                    offset: const Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    category['icon'],
                    size: 30.sp,
                    color: Palette.primary,
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      category['label'],
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Palette.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
