import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, this.icon, this.onTap}) : super(key: key);
  final Icon? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: .5.r, color: Colors.black),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Center(
            child: Icon(
              icon!.icon,
              size: checkLand ? 14.sp : 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
