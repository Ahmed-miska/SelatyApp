import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/onboardingcontroller.dart';
import 'package:selaty/data/static_data/onBoardingList.dart';

class CustomArrowButton extends StatelessWidget {
  const CustomArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          controller.next();
        },
        child: Container(
          margin: EdgeInsets.only(left: 30.w),
          height: 50.r,
          width: 50.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: onBoardingList[controller.currentPage].color,
          ),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}
