import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:selaty/data/static_data/static_data.dart';
import 'package:selaty/features/home/presentation/category_view_items.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, this.index}) : super(key: key);
  final int? index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => CategoryViewItems());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 160,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(flex: 1),
              Text(
                categryList[index!].title!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 2),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      child: Image.asset(
                        categryList[index!].image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: categryList[index!].color!,
                        child: Center(
                          child: SvgPicture.asset(
                            categryList[index!].logo!,
                            height: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
