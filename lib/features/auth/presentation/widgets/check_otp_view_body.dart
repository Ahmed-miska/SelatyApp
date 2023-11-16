import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
                  padding: EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  iconSize: checkLand ? 14.sp : 18.sp,
                  onPressed: () {
                    Get.back();
                  },
                ),
                Center(
                  child: Text(
                    'التحقق من الهاتف',
                    style: TextStyle(
                      fontSize: checkLand ? 14.sp : 22.sp,
                    ),
                  ),
                ),
                IconButton(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(0),
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
                  style: TextStyle(
                      fontSize: checkLand ? 14.sp : 16.sp,
                      color: Colors.grey.shade700),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: checkLand ? 20.h : 50.h),
                CustomOTPTextField(),
                SizedBox(height: checkLand ? 20.h : 30.h),
                Text(
                  'لم يصل الكود؟',
                  style: TextStyle(
                      fontSize: checkLand ? 12.sp : 14.sp,
                      color: Colors.grey.shade700),
                  textAlign: TextAlign.right,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'اعاده ارسال رمز جديد',
                    style: TextStyle(
                        fontSize: checkLand ? 14.sp : 18.sp, color: Colors.red),
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
