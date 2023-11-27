import 'package:flutter/material.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/features/ShopCart/presentation/widgets/shopCardLandview.dart';
import 'package:selaty/features/ShopCart/presentation/widgets/shopcartview.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Text(
            'عربه التسوق',
            style: Styles.textStyle18.copyWith(color: Colors.black),
          )),
      body: SafeArea(
        child: MediaQuery.of(context).orientation == Orientation.landscape
            ? const ShopCartLandView()
            : const ShopCartView(),
      ),
    );
  }
}
