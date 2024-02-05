import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziti_assignment/routes/app_pages.dart';
import 'package:ziti_assignment/routes/app_routes.dart';
import 'package:ziti_assignment/themes/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: 'Ziti Assignment',
      theme: AppTheme.light,
      initialRoute: AppRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
