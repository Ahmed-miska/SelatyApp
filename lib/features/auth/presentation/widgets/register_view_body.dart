import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/features/auth/presentation/check_phone_view.dart';
import 'package:selaty/features/auth/presentation/login_view.dart';
import '../../../../core/constant.dart';
import 'custom_back_button.dart';
import 'custom_button.dart';
import 'custom_external_login.dart';
import 'custom_text_field_input_email.dart';
import 'custom_text_field_input_pass.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

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
                      size: checkLand ? 10.sp : 18.sp,
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
                height: checkLand ? 10.h : 30.h,
              ),
              Text(
                'أنشاء حساب جديد',
                style: Styles.textStyle24.copyWith(color: kBlackColor),
                textAlign: TextAlign.right,
              ),
              Text(
                'ادخل بياناتك لأنشاء حساب',
                style: Styles.textStyle18.copyWith(color: kGreykColor),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: checkLand ? 12.h : 30.h),
              const CustomTextFieldInputEmail(
                text: 'الاسم',
              ),
              SizedBox(height: checkLand ? 10.sp : 20.h),
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
              SizedBox(height: checkLand ? 20.h : 30.h),
              CustomButton(
                color: kPrimarColor,
                text: 'اشتراك',
                onTap: () {
                  Get.to(() => const CheckPhoneView());
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              const Center(
                child: Text(
                  'او اشترك مع',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: checkLand ? 5.h : 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomExternalLogin(
                    color: Colors.red,
                    text: 'Google',
                    icon: Icon(Icons.plus_one),
                  ),
                  CustomExternalLogin(
                    color: Color(0xff3C5A9A),
                    text: 'Facebook',
                    icon: Icon(Icons.facebook),
                  ),
                ],
              ),
              SizedBox(
                height: checkLand ? 20.h : 28.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(transition: Transition.fade, () => const LoginView());
                    },
                    child: Row(
                      children: [
                        const Text(
                          'تسجيل الدخول',
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
                    'لديك حساب بالفعل',
                    style: Styles.textStyle18,
                  )
                ],
              ),
              SizedBox(height: checkLand ? 20.h : 0)
            ],
          ),
        ),
      ),
    );
  }
}
