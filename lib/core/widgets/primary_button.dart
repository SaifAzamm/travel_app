import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final double? height;
  final double? width;

  const PrimaryButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Palette.primary, Palette.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Palette.shadow.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Palette.white,
              ),
            ),
            SizedBox(width: 10.w),
            Icon(
              Icons.arrow_forward,
              size: 20.sp,
              color: Palette.white,
            ),
          ],
        ),
      ),
    );
  }
}
