import 'package:flutter/material.dart';
import 'package:selaty/features/home/presentation/widgets/category_view_item_body.dart';

class CategoryViewItems extends StatelessWidget {
  const CategoryViewItems({Key? key,this.index}) : super(key: key);
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CategoryViewItemsBody(index:index),
      ),
    );
  }
}
