import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/data/static_data/static_data.dart';
import 'package:selaty/features/home/presentation/widgets/best_seller_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_filter.dart';

import '../../../auth/presentation/widgets/custom_back_button.dart';

class CategoryViewItemsBody extends StatelessWidget {
  const CategoryViewItemsBody({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
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
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    Text(
                      'التصنيفات',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    CustomBackButton(
                      icon: Icon(Icons.calendar_month_outlined,
                          color: Colors.white),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: CustomSearchBar(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: DynamicHeightGridView(
              itemCount: bestSellerList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              builder: (BuildContext context, int index) {
                return BestSellerItem(
                  index: index,
                );
              },
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 3
                      : 2,
            ),
          ),
        ),
      ],
    );
  }
}
