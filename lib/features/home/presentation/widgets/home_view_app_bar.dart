import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/core/utils/constants/styles.dart';

import '../../../auth/presentation/widgets/custom_back_button.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
        children: [
          CustomBackButton(
            icon: const Icon(
              Icons.calendar_month_outlined,
            ),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'احمد مسكه',
                  style: Styles.textStyle18,
                ),
                Row(
                  children: [
                    Text(
                      'الباجور -المنوفيه',
                      style: Styles.textStyle18,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                      size: 14,
                    )
                  ],
                )
              ],
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(Assets.profile),
            // child: Image.asset('assets/images/1.jpg'),
          )
        ],
      ),
    );
  }
}
