import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';

class BottomBarProfileItem extends StatelessWidget {
  const BottomBarProfileItem(
      {Key? key,
      required this.mainColor,
      required this.title,
      required this.primCOlor,
      required this.icon})
      : super(key: key);
  final Color mainColor;
  final String title;
  final Color primCOlor;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
            height: 150,
            width: Get.width / 2.5,
            decoration: BoxDecoration(
                color: mainColor, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: primCOlor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      icon.icon,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: Styles.textStyle18.copyWith(color: kwhiteColor),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
