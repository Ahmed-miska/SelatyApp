import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/onboardingcontroller.dart';
import 'package:selaty/data/static_data/static_data.dart';

class CustomPageView extends GetView<OnBoardingControllerImp> {
  const CustomPageView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp);
    return PageView.builder(
      
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value = value);
        print(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 50.h),
            Center(
              child: Image.asset(
                onBoardingList[index].image!,
                height: 200.h,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              onBoardingList[index].title!,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: onBoardingList[index].color!,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Text(
              onBoardingList[index].body!,
              style: TextStyle(
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.right,
            )
          ],
        ),
      ),
    );
  }
}
