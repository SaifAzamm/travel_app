import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ass_travel_app/core/routes/router.dart';

class HorizontalImageList extends StatelessWidget {
  final List<String> images;

  const HorizontalImageList(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      separatorBuilder: (context, index) => SizedBox(width: 10.w),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(
              AppRoutes.detailPage,
              parameters: {
                'title': 'British Columbia',
                'location': 'Canada, British Columbia',
                'imageUrl': images[index],
                'price': '1276',
                'rating': '5.0',
                'description':
                    'This 134 kilometers Highway 99 trail gives you a taste of the Canada mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.',
              },
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: CachedNetworkImage(
              imageUrl: images[index],
              width: 190.w,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: 190.w,
                height: 280.h,
                color: Colors.grey.shade200,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                width: 190.w,
                height: 280.h,
                color: Colors.grey.shade200,
                child: Icon(Icons.broken_image, size: 50.sp),
              ),
            ),
          ),
        );
      },
    );
  }
}
