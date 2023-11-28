import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:selaty/features/splash/presentation/splash_view.dart';

void main() {
  runApp(const Selaty());
}

class Selaty extends StatelessWidget {
  const Selaty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade50,
            textTheme: const TextTheme()),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
