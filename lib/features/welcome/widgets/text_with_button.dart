import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:ass_travel_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWithButton extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final Function() ontap;

  const TextWithButton({
    super.key,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: Colors.black
                .withOpacity(0.5), // Darker background for readability
            borderRadius: BorderRadius.circular(10.r),
          ),
          margin: EdgeInsets.only(top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Palette.white,
                    ),
              ),
              SizedBox(height: 8.h),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Palette.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 12.h),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Palette.white,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        PrimaryButton(
          buttonText: "Explore",
          onPressed: ontap,
        ),
      ],
    );
  }
}
