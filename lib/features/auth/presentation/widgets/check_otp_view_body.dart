import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/constants/styles.dart';

import 'custom_otp_text_field.dart';

class CheckOTPViewBody extends StatelessWidget {
  const CheckOTPViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  iconSize: checkLand ? 14.sp : 18.sp,
                  onPressed: () {
                    Get.back();
                  },
                ),
                const Center(
                  child: Text('التحقق من الهاتف', style: Styles.textStyle16),
                ),
                IconButton(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.calendar_month_outlined,
                  ),
                  iconSize: checkLand ? 14.sp : 18.sp,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: checkLand ? 5.h : 10.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ادخل رمز otp الخاص بك هنا',
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey.shade700,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: checkLand ? 20.h : 50.h),
                const CustomOTPTextField(),
                SizedBox(height: checkLand ? 20.h : 30.h),
                Text(
                  'لم يصل الكود؟',
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey.shade700,
                  ),
                  textAlign: TextAlign.right,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'اعاده ارسال رمز جديد',
                    style: Styles.textStyle18.copyWith(
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                // SizedBox(height: checkLand ? 10.h : 50.h),
              ],
            )
          ],
        ),
      ),
    );
  }
}
