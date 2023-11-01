import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:selaty/features/auth/presentation/auth_view.dart';

import '../data/static_data/static_data.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.to(()=>AuthView());
    } else {
      pageController.animateToPage(
        currentPage,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 600),
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
