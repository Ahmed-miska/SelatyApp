import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/controller/home_view_controller.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';
import 'package:selaty/data/static_data/categoryList.dart';
import 'package:selaty/features/home/presentation/category_View.dart';
import 'package:selaty/features/home/presentation/widgets/best_seller_photo.dart';
import 'package:selaty/features/home/presentation/widgets/category_item.dart';
import 'package:selaty/features/home/presentation/widgets/custom_search_filter.dart';
import 'package:selaty/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:selaty/features/home/presentation/widgets/offer_item.dart';
import 'package:selaty/features/home/presentation/widgets/row_of_cat.dart';

import 'best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder(builder: (context, constraints) {
    //   const double itemWidth = 200.0;
    //   final int crossAxisCount = (constraints.maxWidth / itemWidth).floor();
    //   return crossAxisCount;
    // });

    Get.put(HomeViewContrrolerImp());
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const HomeViewAppBar(),
            const CustomSearchBar(),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 25.h),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'مشاهده الكل',
                        style: Styles.textStyle16.copyWith(color: kGreykColor),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'اعلي مبيعات',
                    style: Styles.textStyle16.copyWith(color: kGreykColor),
                  ),
                  const Text(
                    '  القيمه الافضل',
                    style: Styles.textStyle18,
                  )
                ],
              ),
            ),
            const BestSellerPhotos(),
            InkWell(
              onTap: () {
                Get.to(() => const CategoryView());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  'التصنيفات',
                  style:
                      Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
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
            const RowOfHomeView(
              text: 'الاكثر مبيعا ',
            ),
            LayoutBuilder(builder: (context, constraints) {
              const double itemWidth = 180;
              final int crossAxisCount =
                  (constraints.maxWidth / itemWidth).floor();
              return Padding(
                padding: const EdgeInsets.all(12),
                child: DynamicHeightGridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: bestSellerList.length,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 30,
                  crossAxisCount: crossAxisCount,
                  // MediaQuery.of(context).orientation == Orientation.landscape
                  //     ? 4
                  //     : 2,
                  builder: (context, index) {
                    // LayoutBuilder(
                    //   builder: (context, constraints) {
                    //     const double itemWidth = 200.0;
                    //     final int crossAxisCount =
                    //         (constraints.maxWidth / itemWidth).floor();
                    //   },
                    // );
                    return BestSellerItem(
                      index: index,
                    );
                  },
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  Assets.fruitimage1,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                ),
              ),
            ),
            const RowOfHomeView(
              text: 'تسوق  حسب العروض',
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: DynamicHeightGridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                mainAxisSpacing: 25,
                crossAxisSpacing: 30,
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 5
                        : 3,
                builder: (context, index) {
                  return OfferItem(
                    index: index,
                  );
                },
              ),
            ),
            // Container(
            //   height:
            //       MediaQuery.of(context).orientation == Orientation.landscape
            //           ? 320
            //           : 610,
            //   child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: GridView.builder(
            //         shrinkWrap: true,
            //         itemCount: bestSellerList.length,
            //         scrollDirection: Axis.horizontal,
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: MediaQuery.of(context).orientation ==
            //                   Orientation.landscape
            //               ? 1
            //               : 2,
            //           childAspectRatio: 1.7,
            //         ),
            //         itemBuilder: (BuildContext context, int index) {
            //           return Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: BestSellerItem(
            //               index: index,
            //             ),
            //           );
            //         },
            //       )
            //       // DynamicHeightGridView(
            //       //   shrinkWrap: true,
            //       //   physics: const NeverScrollableScrollPhysics(),
            //       //   itemCount: 6,
            //       //   mainAxisSpacing: 25,
            //       //   crossAxisSpacing: 30,
            //       //   crossAxisCount: MediaQuery.of(context).orientation ==
            //       //           Orientation.landscape
            //       //       ? 5
            //       //       : 3,
            //       //   builder: (context, index) {
            //       //     return Padding(
            //       //       padding: const EdgeInsets.all(8.0),
            //       //       child: BestSellerItem(
            //       //         index: index,
            //       //       ),
            //       //     );
            //       //   },
            //       // ),
            //       ),
            // ),
            // Container(
            //   height: 308,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: bestSellerList.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: BestSellerItem(
            //           index: index,
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ],
    );
  }
}
