import 'package:flutter/material.dart';
import 'package:selaty/features/home/presentation/widgets/categoryviewbody.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CategoryViewBody(),
      ),
    );
  }
}
