import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';


class ListView1 extends StatelessWidget {
  const ListView1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Slidable(
            startActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  spacing: 2,
                  flex: 2,
                  onPressed: (context) {},
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                ),
              ],
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.grey,
                              )),
                          const Text(
                            "2",
                            style:  Styles.textStyle18,
                          ),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.grey,
                              ))
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "\$ 3 * ${bestSellerList[index].weight}",
                            style:  Styles.textStyle18,
                          ),
                          Text(
                            bestSellerList[index].title,
                            style:  Styles.textStyle18,
                          ),
                          const Text("Kg 1 ")
                        ],
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}