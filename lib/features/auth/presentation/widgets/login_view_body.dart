import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/core/utils/constants/styles.dart';
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
        physics: const BouncingScrollPhysics(),
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
                    icon: const Icon(
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
                    Assets.hlogo,
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
              const CustomTextFieldInputPassword(
                text: 'كلمه السر',
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ChangePasswordView());
                },
                child: const Text(
                  '!! هل نسيت كلمه السر',
                  style: Styles.textStyle18,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 30.h),
              Center(
                child: CustomButton(
                  color: kPrimarColor,
                  text: 'تسجيل الدخول',
                  onTap: () {
                    Get.offAll(() => const HomeView());
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
                          transition: Transition.fade, () => const RegisterView());
                    },
                    child: Row(
                      children: [
                        const Text(
                          'انشاء حساب جديد ',
                          style: Styles.textStyle18,
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: checkLand ? 16.sp : 24.sp,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'ليس لديك حساب ',
                    style: Styles.textStyle18,
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
