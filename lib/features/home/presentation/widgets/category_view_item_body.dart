import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';
import 'package:selaty/data/static_data/categoryList.dart';
import 'package:selaty/features/home/presentation/widgets/best_seller_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_filter.dart';

import '../../../auth/presentation/widgets/custom_back_button.dart';

class CategoryViewItemsBody extends StatelessWidget {
  const CategoryViewItemsBody({Key? key, this.text, this.index})
      : super(key: key);
  final String? text;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 100.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            color: Colors.green,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(
                      onTap: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    Text(
                      categryList[index!].type!,
                      style: Styles.textStyle20.copyWith(color: kwhiteColor),
                    ),
                    CustomBackButton(
                      icon: const Icon(Icons.calendar_month_outlined,
                          color: Colors.white),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: CustomSearchBar(),
        ),
        LayoutBuilder(builder: (context, constraints) {
          const double itemWidth = 180;
          final int crossAxisCount = (constraints.maxWidth / itemWidth).floor();
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DynamicHeightGridView(
                itemCount: bestSellerList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return BestSellerItem(
                    index: index,
                  );
                },
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            ),
          );
        }),
      ],
    );
  }
}
