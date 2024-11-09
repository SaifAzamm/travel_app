import 'dart:ui';

import 'package:ass_travel_app/core/widgets/primary_button.dart';
import 'package:ass_travel_app/features/nav_pages/controller/detail_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;
  final double price;
  final double rating;
  final String description;

  const DetailPage({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<DetailPageController>()) {
      Get.lazyPut<DetailPageController>(() => DetailPageController());
    }
    final controller = Get.find<DetailPageController>();

    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.4), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            left: 16.w,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Palette.white,
                  size: 24.sp,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    color: Palette.cardBackground.withOpacity(0.6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "$title \$$price",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Palette.primaryText,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Palette.primary, size: 20.sp),
                          SizedBox(width: 5.w),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Palette.secondaryText,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 20.sp),
                          SizedBox(width: 5.w),
                          Text(
                            "($rating)",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "People",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Palette.primaryText,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Number of people in your group",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Palette.secondaryText,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Obx(() {
                        return Row(
                          children: List.generate(5, (index) {
                            final peopleCount = index + 1;
                            return GestureDetector(
                              onTap: () =>
                                  controller.selectPeopleCount(peopleCount),
                              child: Container(
                                margin: EdgeInsets.only(right: 12.w),
                                width: 50.w,
                                height: 50.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: controller.selectedPeopleCount.value ==
                                          peopleCount
                                      ? Palette.primary
                                      : Palette.cardBackground,
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(
                                    color:
                                        controller.selectedPeopleCount.value ==
                                                peopleCount
                                            ? Palette.primary
                                            : Palette.secondaryText,
                                  ),
                                ),
                                child: Text(
                                  "$peopleCount",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        controller.selectedPeopleCount.value ==
                                                peopleCount
                                            ? Colors.white
                                            : Palette.primaryText,
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      }),
                      SizedBox(height: 20.h),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Palette.primaryText,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Palette.secondaryText,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Obx(
                            () => GestureDetector(
                              onTap: () => controller.updateIsSelected(),
                              child: Container(
                                width: 50.w,
                                height: 50.w,
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  color: Palette.cardBackground,
                                  borderRadius: BorderRadius.circular(12.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  controller.isSelected.value
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Palette.primary,
                                  size: 24.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          const Expanded(
                            child: PrimaryButton(buttonText: "Book Trip Now"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
