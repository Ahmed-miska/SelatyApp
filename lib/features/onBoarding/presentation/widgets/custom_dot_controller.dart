import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/onboardingcontroller.dart';

import '../../../../data/static_data/static_data.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...List.generate(
            onBoardingList.length,
            (i) {
              return AnimatedContainer(
                margin: EdgeInsets.all(3.r),
                duration: Duration(milliseconds: 1),
                height: 7.r,
                width: controller.currentPage == i ? 20.r : 7.r,
                decoration: BoxDecoration(
                  color: onBoardingList[controller.currentPage].color,
                  borderRadius: BorderRadius.circular(25),
                ),
              );
            },
          ),
          SizedBox(width: 30.w),
        ],
      );
    });
  }
}
