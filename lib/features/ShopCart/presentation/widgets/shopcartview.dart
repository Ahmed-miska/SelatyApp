import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'listview1.dart';
import 'listview2.dart';

class ShopCartView extends StatelessWidget {
  const ShopCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: Get.height / 2.21,
            child: const ListView1(),
          ),
          SizedBox(height: Get.height / 2.2, child: const ListView2()),
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
          // )
        ],
      ),
    );
  }
}
