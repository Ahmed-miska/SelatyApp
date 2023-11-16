import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_text_field_input_pass.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({Key? key}) : super(key: key);

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
                Text(
                  'تغيير  كلمه المرور',
                  style: TextStyle(
                    fontSize: checkLand ? 14.sp : 22.sp,
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
              children: [
                Text(
                  'ادخل كلمه المرور الجديده',
                  style: TextStyle(
                      fontSize: checkLand ? 14.sp : 16.sp,
                      color: Colors.grey.shade600),
                ),
                SizedBox(height: checkLand ? 15.h : 100.h),
                CustomTextFieldInputPassword(
                  text: 'كلمه المرور الحاليه',
                ),
                SizedBox(height: checkLand ? 15.h : 30.h),
                CustomTextFieldInputPassword(
                  text: 'كلمه مرور جديده',
                ),
                SizedBox(height: checkLand ? 30.h : 50.h),
                CustomButton(
                  color: kPrimarColor,
                  text: 'تغيير',
                  onTap: () {},
                ),
                SizedBox(height: checkLand ? 30.h : 20.h),
              ],
            )
          ],
        ),
      ),
    );
  }
}
