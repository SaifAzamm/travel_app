import 'package:ass_travel_app/core/routes/router.dart';
import 'package:ass_travel_app/features/nav_pages/controller/home_controller.dart';
import 'package:ass_travel_app/features/nav_pages/view/home_appbar.dart';
import 'package:ass_travel_app/features/nav_pages/widgets/category_list.dart';
import 'package:ass_travel_app/features/nav_pages/widgets/home_drawer.dart';
import 'package:ass_travel_app/features/nav_pages/widgets/horizontal_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<HomeController>()) {
      Get.lazyPut<HomeController>(() => HomeController());
    }
    final controller = Get.find<HomeController>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        key: controller.scaffoldKey,
        drawer: const HomeDrawer(), // Add your drawer widget here
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              //App bar
              HomeAppbar(
                onMenuTap: () =>
                    controller.scaffoldKey.currentState!.openDrawer(),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  "Discover",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 30.sp, fontWeight: FontWeight.bold),
                ),
              ),
              // Tab Bar
              DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                      isScrollable: false,
                      labelPadding: EdgeInsets.only(right: 20.w),
                      padding: EdgeInsets.only(right: 60.w),
                      labelColor: Palette.primary,
                      unselectedLabelColor: Palette.secondaryText,
                      indicatorColor: Colors.transparent, // No indicator color
                      dividerColor: Colors.transparent, // No divider color
                      tabs: const [
                        Tab(text: "Places"),
                        Tab(text: "Inspiration"),
                        Tab(text: "Emotions"),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h),
                      height: 280.h, // Adjusted height for content
                      child: TabBarView(
                        children: [
                          HorizontalImageList(controller.places),
                          HorizontalImageList(controller.inspiration),
                          HorizontalImageList(controller.emotions),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              // Explore More Section
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore more",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(AppRoutes.categoriesScreen),
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Palette.primary,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const CategoriesList()
            ],
          ),
        ),
      ),
    );
  }
}
