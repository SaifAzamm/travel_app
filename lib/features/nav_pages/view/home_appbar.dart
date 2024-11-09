import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget {
  final VoidCallback onMenuTap; // Callback to open drawer

  const HomeAppbar({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu_rounded, size: 30),
            onPressed: onMenuTap, // Call the callback to open the drawer
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200, // Placeholder color while loading
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
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
        ],
      ),
    );
  }
}
