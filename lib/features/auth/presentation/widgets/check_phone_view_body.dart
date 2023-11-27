import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';
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
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  iconSize: checkLand ? 14.sp : 18.sp,
                  onPressed: () {
                    Get.back();
                  },
                ),
                const Spacer(),
                const Text('تحقق من رقم الهاتف', style: Styles.textStyle18),
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
            const Column(
              children: [
                Text(
                  'لقد ارسلنا اليك رساله قصيره تحتوي علي رمز ',
                  style: Styles.textStyle18,
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
              decoration: const InputDecoration(
                // hintText: AppStrings.phoneNumberHint,
                border: UnderlineInputBorder(),
                suffixIcon: Icon(
                  Icons.highlight_remove_sharp,
                  color: Colors.green,
                ),
                hintTextDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(height: 50.h),
            CustomButton(
              onTap: () {
                
                Get.to(const CheckOTPView());
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
