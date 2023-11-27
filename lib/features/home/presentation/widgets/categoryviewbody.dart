import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/categoryList.dart';
import 'package:selaty/features/home/presentation/widgets/category_item.dart';

import '../../../auth/presentation/widgets/custom_back_button.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomBackButton(
                icon: Icon(
                  Icons.calendar_month_outlined,
                ),
              ),
              const Text(
                'التصنيفات',
                style:  Styles.textStyle18,
              ),
              CustomBackButton(
                onTap: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios),
              )
            ],
          ),
          LayoutBuilder(builder: (context, constraints) {
            const double itemWidth = 150;
            final int crossAxisCount =
                (constraints.maxWidth / itemWidth).floor();
            return Expanded(
              child: DynamicHeightGridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categryList.length,
                builder: (BuildContext context, int index) {
                  return CategoryItem(
                    index: index,
                  );
                },
                crossAxisCount: crossAxisCount,
              ),
            );
          })
        ],
      ),
    );
  }
}
