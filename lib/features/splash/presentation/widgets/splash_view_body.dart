import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
            child: Image.asset('assets/images/1.jpg'),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        const CircularProgressIndicator(
          color: Colors.green,
        )
      ],
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}
