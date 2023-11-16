import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'احمد مسكه',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      'الباجور -المنوفيه',
                      style: TextStyle(fontSize: 12),
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
            backgroundImage: AssetImage('assets/images/1.jpg'),
            // child: Image.asset('assets/images/1.jpg'),
          )
        ],
      ),
    );
  }
}
