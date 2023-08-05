import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/core/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      fontFamily: 'Inter',
      scaffoldBackgroundColor: AppColors.pureWhite),
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: GenerateRoute.generateRoute,
    );
  }
}
