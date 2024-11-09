import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Palette.lightBackground,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: Palette.primaryText),
    dividerTheme: const DividerThemeData(color: Palette.divider),
    appBarTheme: AppBarTheme(
      backgroundColor: Palette.appBarBackground,
      elevation: 2,
      centerTitle: true,
      iconTheme: IconThemeData(color: Palette.primary, size: 24.sp),
      titleTextStyle: TextStyle(
        fontSize: 20.sp,
        color: Palette.primaryText,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
        backgroundColor: Palette.primary,
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Palette.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 28.sp,
        color: Palette.primaryText,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontSize: 20.sp,
        color: Palette.primaryText,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        color: Palette.secondaryText,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: Palette.secondaryText,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Palette.bottomNavBackground,
      selectedItemColor: Palette.primary,
      unselectedItemColor: Palette.secondaryText,
      selectedLabelStyle: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    brightness: Brightness.light,
    useMaterial3: true,
  );
}
