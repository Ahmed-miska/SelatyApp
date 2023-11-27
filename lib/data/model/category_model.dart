import 'dart:ui';

class CategoryModel {
  final String? type;
  final String? image;
  final String? logo;
  final Color? color;
  final int catId;

  CategoryModel({
    required this.catId,
    this.type,
    this.image,
    this.logo,
    this.color,
  });
}
