import 'package:flutter/material.dart';
import 'package:selaty/core/utils/constants/styles.dart';

import '../../../../core/constant.dart';

class DownBarRows extends StatelessWidget {
  const DownBarRows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '5',
            style: Styles.textStyle18.copyWith(color: kPrimarColor),
          ),
          Text(
            'البنود',
            style: Styles.textStyle18.copyWith(color: Colors.black38),
          )
        ],
      ),
    );
  }
}
