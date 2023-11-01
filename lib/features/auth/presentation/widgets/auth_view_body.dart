import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/auth/presentation/login_view.dart';
import 'package:selaty/features/auth/presentation/register_view.dart';

import 'custom_button.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/5.jpg',
              width: checkLand ? 100.w : 250.w,
            ),
            SizedBox(height: checkLand ? 30.h : 50.h),
            CustomButton(
              onTap: () {
                Get.to(() => LoginView());
              },
              text: 'تسجيل الدخول',
              color: Colors.red,
            ),
            SizedBox(height: 20.h),
            CustomButton(
              onTap: () {
                Get.to(() => RegisterView());
              },
              text: 'انشئ حساب',
              color: kPrimarColor,
            ),
          ],
        ),
      ),
    );
  }
}
