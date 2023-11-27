import 'package:flutter/material.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/offerList.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key, required this.index}) : super(key: key);
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: offersList[index!].color!,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(
            offersList[index!].title1!,
            style: Styles.textStyle18.copyWith(color: kwhiteColor),
          ),
          Text(
            offersList[index!].title2!,
            style: Styles.textStyle18.copyWith(color: kwhiteColor),
          ),
          Text(
            offersList[index!].title3!,
            style: Styles.textStyle18.copyWith(color: kwhiteColor),
          ),
        ],
      ),
    );
  }
}
