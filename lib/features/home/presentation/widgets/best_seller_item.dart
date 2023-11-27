import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';

import 'bestSellerDatails.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => BestSellerItemDetails(
              index: index,
            ));
      },
      child: Container(
        // height: 280,
        // width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2, // Spread radius
              blurRadius: 7, // Blur radius
              offset: const Offset(0, 3), // Offset in the x, y directions
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'جديد',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Center(
                child: SizedBox(
              height: 100,
              child: Image.asset(
                bestSellerList[index].image,
                fit: BoxFit.fill,
                width: 100,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 8),
                  child: Text(
                    bestSellerList[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'الوزن',
                style: Styles.textStyle18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                '${bestSellerList[index].weight} Kg',
                style: Styles.textStyle18,
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.abc,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${bestSellerList[index].price} SAR'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
