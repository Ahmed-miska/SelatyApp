import 'package:flutter/material.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/data/model/category_model.dart';

List<CategoryModel> categryList = [
  CategoryModel(
    type: 'فواكه',
    color: Colors.orange,
    image: Assets.fruitimage1,
    logo: Assets.fruits,
    catId: 1,
  ),
  CategoryModel(
    type: 'خضروات',
    color: Colors.green,
    image: Assets.fruitimage2,
    logo: Assets.vegetables,
    catId: 2,
  ),
  CategoryModel(
    type: 'دواجن',
    color: Colors.brown,
    image: Assets.fruitimage1,
    logo: Assets.chicken,
    catId: 3,
  ),
];
