import 'package:ass_travel_app/core/routes/router.dart';
import 'package:ass_travel_app/features/welcome/controller/welcome_controller.dart';
import 'package:ass_travel_app/features/welcome/widgets/text_with_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<WelcomeController>()) {
      Get.lazyPut<WelcomeController>(() => WelcomeController());
    }
    final controller = Get.find<WelcomeController>();

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.images.length,
            onPageChanged: (index) {
              controller.updatePageIndex(index);
            },
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // Background Image
                  Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(controller.images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Top Gradient Overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100.h, // Adjust height as needed
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black54, // Darker at the top
                            Colors.transparent, // Transparent in the middle
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Bottom Gradient Overlay
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200.h, // Adjust height as needed
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black54, // Darker at the bottom
                            Colors.transparent, // Transparent in the middle
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Text and Button Widget
                  Positioned(
                    bottom: 50.h,
                    left: 16.w,
                    right: 16.w,
                    child: TextWithButton(
                        title: controller.title[index],
                        subTitle: controller.subtitle[index],
                        description: controller.description[index],
                        ontap: () => Get.offAllNamed(AppRoutes.navbarScreen)),
                  ),
                ],
              );
            },
          ),
          // Page Indicator
          Positioned(
            right: 20.w,
            top: MediaQuery.of(context).size.height * 0.15,
            child: Obx(() {
              return SmoothPageIndicator(
                controller: PageController(
                  initialPage: controller.currentPageIndex.value,
                ),
                count: controller.images.length,
                axisDirection: Axis.vertical,
                effect: ExpandingDotsEffect(
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  expansionFactor: 3,
                  activeDotColor: Theme.of(context).primaryColor,
                  dotColor: Theme.of(context).dividerColor,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
