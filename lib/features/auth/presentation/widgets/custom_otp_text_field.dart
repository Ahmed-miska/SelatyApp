import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';

class CustomOTPTextField extends StatelessWidget {
  const CustomOTPTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 40.sp,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.black38,
      ),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      // fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print(pin);
      },
    );
  }
}
