import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideeye/core/bindings/app_binding.dart';
import 'package:sideeye/core/routing/app_routes.dart';
import 'package:sideeye/presentation/common/design_system/app_theme.dart';
import 'package:sideeye/presentation/pages/navigation/home_page.dart';

void main() => runApp(const SideEyeApp());

class SideEyeApp extends StatelessWidget {
  const SideEyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SideEye',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialBinding: AppBinding(),
      initialRoute: HomePage.routeName,
      getPages: AppRoutes.pages,
    );
  }
}
