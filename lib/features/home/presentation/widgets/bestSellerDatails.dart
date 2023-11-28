import 'package:flutter/material.dart';

import 'bestselleritemdeyailsbody.dart';

class BestSellerItemDetails extends StatelessWidget {
  const BestSellerItemDetails({Key? key, required this.index})
      : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BestSellerItemDetailsBody(
        index: index,
      )),
    );
  }
}
