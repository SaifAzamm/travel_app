import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ass_travel_app/core/config/pallet.dart';
import 'package:ass_travel_app/core/routes/router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Palette.lightBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom Header with Gradient
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Palette.primary, Palette.secondary],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80.w,
                  height: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1667053508464-eb11b394df83?q=80&w=1530&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Palette.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Drawer Items
          _buildDrawerItem(
            icon: Icons.home,
            text: "Home",
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.category,
            text: "Categories",
            onTap: () => Get.toNamed(AppRoutes.categoriesScreen),
          ),
          _buildDrawerItem(
            icon: Icons.bookmark,
            text: "Bookmarks",
            onTap: () {},
          ),
          _buildDrawerItem(
            icon: Icons.settings,
            text: "Settings",
            onTap: () {},
          ),
          const Spacer(),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    Color iconColor = Palette.primary,
    Color textColor = Palette.primaryText,
    required Function() onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor, size: 24.sp),
      title: Text(
        text,
        style: TextStyle(fontSize: 16.sp, color: textColor),
      ),
      onTap: onTap,
    );
  }
}
