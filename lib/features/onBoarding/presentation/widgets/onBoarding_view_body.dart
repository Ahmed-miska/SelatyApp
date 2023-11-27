import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/onboardingcontroller.dart';
import 'package:selaty/features/onBoarding/presentation/widgets/custom_arrow_button.dart';
import 'package:selaty/features/onBoarding/presentation/widgets/custom_dot_controller.dart';

import 'custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Column(
      children: [
        Expanded(
          flex: 4,
          child: CustomPageView(),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomArrowButton(),
              CustomDotController(),
            ],
          ),
        )
      ],
    );
  }
}
