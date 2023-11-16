import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/data/static_data/static_data.dart';
import 'package:selaty/features/home/presentation/widgets/category_item.dart';

import '../../../auth/presentation/widgets/custom_back_button.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBackButton(
                icon: Icon(
                  Icons.calendar_month_outlined,
                ),
              ),
              Text(
                'التصنيفات',
                style: TextStyle(fontSize: 20),
              ),
              CustomBackButton(
                icon: Icon(Icons.arrow_back_ios),
              )
            ],
          ),
          Expanded(
            child: DynamicHeightGridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: categryList.length,
              builder: (BuildContext context, int index) {
                return CategoryItem(
                  index: index,
                );
              },
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 3
                      : 2,
            ),
          )
        ],
      ),
    );
  }
}
