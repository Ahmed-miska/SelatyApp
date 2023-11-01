import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExternalLogin extends StatelessWidget {
  const CustomExternalLogin({Key? key, this.text, this.icon, this.color})
      : super(key: key);
  final String? text;
  final Icon? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      height: 50.h,
      width: 150.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        border: Border.all(color: color!),
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon!.icon,
            color: color,
            size: checkLand ? 14.sp : 22.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text!,
            style: TextStyle(color: color, fontSize: checkLand ? 10.sp : 16.sp),
          ),
        ],
      ),
    );
  }
}
