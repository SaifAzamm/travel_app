import 'dart:async';

import 'package:ass_travel_app/core/resources/app_theme.dart';
import 'package:ass_travel_app/core/routes/router.dart';
import 'package:ass_travel_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Timer(const Duration(seconds: 2), () {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, __) {
        return GetMaterialApp(
          initialRoute: AppRoutes.welcomeScreen,
          title: 'Travel-App',
          theme: ApplicationTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          getPages: AppRouter.routes,
        );
      },
    );
  }
}
