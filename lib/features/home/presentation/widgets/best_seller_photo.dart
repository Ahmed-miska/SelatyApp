import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/data/static_data/bestSellerPhotosList.dart';

import '../../../../controller/home_view_controller.dart';

class BestSellerPhotos extends StatelessWidget {
  const BestSellerPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeViewContrrolerImp());
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: SizedBox(
        height: 130.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bestSellerPhotosList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  bestSellerPhotosList[index].image!,
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
