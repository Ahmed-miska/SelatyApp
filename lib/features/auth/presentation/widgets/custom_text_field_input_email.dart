import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant.dart';

class CustomTextFieldInputEmail extends StatelessWidget {
  const CustomTextFieldInputEmail({Key? key, this.text, this.icon})
      : super(key: key);
  final String? text;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.h),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  suffixIcon: icon,
                  suffixIconColor: kPrimarColor,
                  labelText: text,
                  labelStyle: TextStyle(
                      fontSize: checkLand ? 12.sp : 18.sp, color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
