import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/features/onBoarding/presentation/onBoarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: 200.h,
            child: Image.asset(Assets.logo),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        const CircularProgressIndicator(
          color: kPrimarColor,
        )
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
