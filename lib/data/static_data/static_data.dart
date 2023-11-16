import 'package:flutter/material.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/data/model/onBoarding_model.dart';

import '../model/best_seller_image.dart';
import '../model/best_seller_model.dart';
import '../model/category_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'البحث بالقرب منك',
    body: 'ابحث عن المتاجر المفضله التي تريدها بموقعك او حيك',
    image: 'assets/images/2.jpg',
    color: Colors.red,
  ),
  OnBoardingModel(
    title: 'عروض طازجه وجوده',
    body: 'جميع العناصر لها نضاره حقيقيه وهي مخصصه لاحتياجاتك',
    image: 'assets/images/3.jpg',
    color: kPrimarColor,
  ),
  OnBoardingModel(
    title: 'تسليم سريع للمنزل',
    body: 'جميع العناصر لها نضاره حقيقيه وهي مخصصه لاحتياجاتك',
    image: 'assets/images/4.jpg',
    color: Color(0xff736C8B),
  ),
];
List<BestSellerImage> bestSellerPhotosList = [
  BestSellerImage(image: 'assets/images/7.jpg'),
  BestSellerImage(image: 'assets/images/6.jpg'),
];
List<CategoryModel> categryList = [
  CategoryModel(
      title: 'فواكه',
      color: Colors.orange,
      image: 'assets/images/7.jpg',
      logo: 'assets/images/fruits.svg'),
  CategoryModel(
      title: 'خضروات',
      color: Colors.green,
      image: 'assets/images/6.jpg',
      logo: 'assets/images/vegetables.svg'),
  CategoryModel(
      title: 'دواجن',
      color: Colors.brown,
      image: 'assets/images/6.jpg',
      logo: 'assets/images/chicken.svg'),
];

List<BestSellerModel> bestSellerList = [
  BestSellerModel(
    color: Colors.green,
    title: 'خضروات',
    weight: '1',
    price: '50',
    image: 'assets/images/9.png',
  ),
  BestSellerModel(
    image: 'assets/images/8.png',
    color: Colors.orange,
    title: 'فواكه',
    price: '40',
    weight: '2',
  ),
  BestSellerModel(
    image: 'assets/images/7.jpg',
    color: Colors.orange,
    title: 'فواكه',
    price: '40',
    weight: '2',
  ),
  BestSellerModel(
    color: Colors.green,
    title: 'خضروات',
    weight: '1',
    price: '50',
    image: 'assets/images/9.png',
  ),
];
