import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/auth/presentation/check_otp_view.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';

class CheckPhoneViewBody extends StatelessWidget {
  const CheckPhoneViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
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
                Spacer(),
                Text(
                  'تحقق من رقم الهاتف',
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
                  'لقد ارسلنا اليك رساله قصيره تحتوي علي رمز ',
                  style: TextStyle(
                      fontSize: checkLand ? 14.sp : 16.sp,
                      color: Colors.grey.shade700),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(height: checkLand ? 20.h : 100.h),
            IntlPhoneField(
              languageCode: "ar",
              initialCountryCode: 'EG',
              disableLengthCheck: true,
              keyboardType: TextInputType.phone,
              controller: controller,
              textAlign: TextAlign.left,
              dropdownIconPosition: IconPosition.leading,
              decoration: InputDecoration(
                // hintText: AppStrings.phoneNumberHint,
                border: UnderlineInputBorder(),
                suffixIcon: const Icon(
                  Icons.highlight_remove_sharp,
                  color: Colors.green,
                ),
                hintTextDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(height: 50.h),
            CustomButton(
              onTap: () {
                print(controller);
                Get.to(CheckOTPView());
              },
              color: kPrimarColor,
              text: 'تاكيد',
            )
          ],
        ),
      ),
    );
  }
}
