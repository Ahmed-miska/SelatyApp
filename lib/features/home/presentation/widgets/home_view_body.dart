import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/home_view_controller.dart';
import 'package:selaty/data/static_data/static_data.dart';
import 'package:selaty/features/home/presentation/category_View.dart';
import 'package:selaty/features/home/presentation/widgets/best_seller_photo.dart';
import 'package:selaty/features/home/presentation/widgets/category_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_filter.dart';
import 'package:selaty/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:selaty/features/home/presentation/widgets/row_of_cat.dart';

import 'best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeViewContrrolerImp());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HomeViewAppBar(),
          CustomSearchBar(),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 25.h),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'مشاهده الكل',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
                Spacer(),
                Text(
                  'اعلي مبيعات',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  '  القيمه الافضل',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          BestSellerPhotos(),
          InkWell(
            onTap: () {
              Get.to(() => CategoryView());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(
                'التصنيفات',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: categryList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(
                  index: index,
                );
              },
            ),
          ),
          RowOfHomeView(
            text: 'الاكثر مبيعا ',
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: DynamicHeightGridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: bestSellerList.length,
              mainAxisSpacing: 25,
              crossAxisSpacing: 30,
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 3
                      : 2,
              builder: (context, index) {
                return BestSellerItem(
                  index: index,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/7.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          RowOfHomeView(
            text: 'تسوق  حسب العروض',
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: DynamicHeightGridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              mainAxisSpacing: 25,
              crossAxisSpacing: 30,
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 4
                      : 3,
              builder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Column(children: [
                    Text(
                      'صفه ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      '50%',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'خصم',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ]),
                );
              },
            ),
          ),
          Container(
            height: 310,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestSellerList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BestSellerItem(
                    index: index,
                  ),
                );
              },
            ),
          ),
          Container(
            height: 308,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestSellerList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BestSellerItem(
                    index: index,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
