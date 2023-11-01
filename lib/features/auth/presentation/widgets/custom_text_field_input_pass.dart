import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant.dart';

class CustomTextFieldInputPassword extends StatefulWidget {
  const CustomTextFieldInputPassword({Key? key}) : super(key: key);

  @override
  State<CustomTextFieldInputPassword> createState() =>
      _CustomTextFieldInputPasswordState();
}

class _CustomTextFieldInputPasswordState
    extends State<CustomTextFieldInputPassword> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
              child: TextFormField(
                obscureText: passwordVisible,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password incorrect';
                  } else {
                    return null;
                  }
                },
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      size: checkLand ? 12.sp : 20.sp,
                    ),
                  ),
                  suffixIconColor: kPrimarColor,
                  labelText: 'كلمه السر',
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
