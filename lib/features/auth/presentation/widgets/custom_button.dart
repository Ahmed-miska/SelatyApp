import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.color, this.text, this.onTap})
      : super(key: key);
  final Color? color;
  final String? text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: checkLand ? 200.w : null,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: checkLand ? EdgeInsets.all(5.0.r) : EdgeInsets.all(12.0.r),
          child: Center(
            child: Text(text!,
                style: Styles.textStyle18.copyWith(color: kwhiteColor)),
          ),
        ),
      ),
    );
  }
}
