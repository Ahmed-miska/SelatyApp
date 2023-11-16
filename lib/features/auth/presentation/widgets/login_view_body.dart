
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/auth/presentation/change_password_view.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_text_field_input_email.dart';
import 'package:selaty/features/home/presentation/home_view.dart';

import '../register_view.dart';
import 'custom_back_button.dart';
import 'custom_text_field_input_pass.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Expanded(
      child: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: checkLand
              ? EdgeInsets.symmetric(horizontal: 20.w)
              : EdgeInsets.all(18.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  CustomBackButton(
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      size: checkLand ? 10.sp : 50.sp,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: checkLand ? 10.h : 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Center(
                  child: Image.asset(
                    'assets/images/5.jpg',
                    width: checkLand ? 100.w : 300.w,
                  ),
                ),
              ),
              SizedBox(height: checkLand ? 10.h : 20.h),
              CustomTextFieldInputEmail(
                text: 'عنوان البريد الالكتروني',
                icon: Icon(
                  Icons.check_circle_outline,
                  size: checkLand ? 12.sp : 20.sp,
                ),
              ),
              SizedBox(height: 20.h),
              CustomTextFieldInputPassword(
                text: 'كلمه السر',
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => ChangePasswordView());
                },
                child: Text(
                  '!! هل نسيت كلمه السر',
                  style: TextStyle(
                      fontSize: checkLand ? 12.sp : 16.sp,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 30.h),
              Center(
                child: CustomButton(
                  color: kPrimarColor,
                  text: 'تسجيل الدخول',
                  onTap: () {
                    Get.offAll(() => HomeView());
                  },
                ),
              ),
              SizedBox(height: checkLand ? 50.h : 130.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(
                          transition: Transition.fade, () => RegisterView());
                    },
                    child: Row(
                      children: [
                        Text(
                          'انشاء حساب جديد ',
                          style: TextStyle(fontSize: checkLand ? 12.sp : 18.sp),
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: checkLand ? 16.sp : 24.sp,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'ليس لديك حساب ',
                    style: TextStyle(fontSize: checkLand ? 12.sp : 18.sp),
                  )
                ],
              ),
              SizedBox(height: 20.h)
            ],
          ),
        ),
      ),
    );
  }
}
