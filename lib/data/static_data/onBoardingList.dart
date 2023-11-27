import 'package:flutter/material.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';

import '../../core/constant.dart';
import '../model/onBoarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'البحث بالقرب منك',
    body: 'ابحث عن المتاجر المفضله التي تريدها بموقعك او حيك',
    image: Assets.onboarding1,
    color: kRedkColor,
  ),
  OnBoardingModel(
    title: 'عروض طازجه وجوده',
    body: 'جميع العناصر لها نضاره حقيقيه وهي مخصصه لاحتياجاتك',
    image: Assets.onboarding2,
    color: kPrimarColor,
  ),
  OnBoardingModel(
    title: 'تسليم سريع للمنزل',
    body: 'جميع العناصر لها نضاره حقيقيه وهي مخصصه لاحتياجاتك',
    image: Assets.onboarding3,
    color: const Color(0xff736C8B),
  ),
];
