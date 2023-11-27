import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';

class RowOfHomeView extends StatelessWidget {
  const RowOfHomeView({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
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
            text!,
            style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
