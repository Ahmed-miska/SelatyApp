import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_back_button.dart';

import '../../../auth/presentation/widgets/custom_button.dart';

class BestSellerItemDetailsBody extends StatelessWidget {
  const BestSellerItemDetailsBody({Key? key, required this.index})
      : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              CustomBackButton(
                onTap: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              const Spacer(),
              CustomBackButton(
                icon: const Icon(Icons.calendar_month_outlined,
                    color: Colors.white),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 150.h,
                  child: Image.asset(
                    bestSellerList[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        bestSellerList[index].title,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        bestSellerList[index].price,
                        style: Styles.textStyle16,
                      ),
                    ),
                    Text(
                      'الوصف',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      bestSellerList[index].descreption,
                      textAlign: TextAlign.right,
                      style: Styles.textStyle18.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'سيايه الاسترجاع',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      bestSellerList[index].policy,
                      style: Styles.textStyle18.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      color: kPrimarColor,
                      onTap: () {},
                      text: 'اضف الي السله',
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
