import 'package:flutter/material.dart';
import 'package:selaty/features/ShopCart/presentation/widgets/listview1.dart';
import 'package:selaty/features/ShopCart/presentation/widgets/listview2.dart';

class ShopCartLandView extends StatelessWidget {
  const ShopCartLandView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: ListView2()),
        Expanded(flex: 1, child: ListView1())
      ],
    );
  }
}
