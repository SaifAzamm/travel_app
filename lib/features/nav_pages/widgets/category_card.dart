import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap; // Optional callback for tap action

  const CategoryCard(
      {super.key, required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80.w,
        margin: EdgeInsets.only(right: 12.w),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: Palette.cardBackground,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Palette.shadow.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Palette.primary, size: 28.sp),
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Palette.primaryText,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
