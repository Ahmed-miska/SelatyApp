import 'package:flutter/material.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';

class ListView2 extends StatelessWidget {
  const ListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "البنود",
                            style: Styles.textStyle18
                                .copyWith(color: kPrimarColor),
                          ),
                          const Text(
                            "5",
                            style: Styles.textStyle18,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "المجموع الفرعي",
                            style: Styles.textStyle18
                                .copyWith(color: kPrimarColor),
                          ),
                          const Text(
                            "\$100.00",
                            style: Styles.textStyle18,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "رسوم التوصيل",
                            style: Styles.textStyle18
                                .copyWith(color: kPrimarColor),
                          ),
                          const Text(
                            "Free",
                            style: Styles.textStyle18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الاجمالي",
                            style: Styles.textStyle22
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "100.00 SAR",
                            style: Styles.textStyle18,
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: SizedBox(
                      //     width: double.infinity,
                      //     height: 50,
                      //     child: MaterialButton(
                      //       onPressed: () {},
                      //       color: Colors.green,
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(15)),
                      //       child: const Text(
                      //         "الدفع",
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 20),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      "الدفع",
                      style: Styles.textStyle18.copyWith(color: kwhiteColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
