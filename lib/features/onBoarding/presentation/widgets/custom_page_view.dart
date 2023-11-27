import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/onboardingcontroller.dart';
import 'package:selaty/data/static_data/onBoardingList.dart';

class CustomPageView extends GetView<OnBoardingControllerImp> {
  const CustomPageView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool checkLand =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Get.put(OnBoardingControllerImp);
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value = value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: checkLand ? null : 50.h),
            Center(
              child: Image.asset(
                onBoardingList[index].image!,
                height: checkLand ? 100.h : 200.h,
              ),
            ),
            SizedBox(
              height: checkLand ? 5.h : 10.h,
            ),
            Text(
              onBoardingList[index].title!,
              style: TextStyle(
                fontSize: checkLand ? 14.sp : 24.sp,
                fontWeight: FontWeight.bold,
                color: onBoardingList[index].color!,
              ),
            ),
            SizedBox(
              height: checkLand ? 5.h : 10.h,
            ),
            Text(
              onBoardingList[index].body!,
              style: TextStyle(
                fontSize: checkLand ? 12.sp : 20.sp,
              ),
              textAlign: TextAlign.right,
            )
          ],
        ),
      ),
    );
  }
}
