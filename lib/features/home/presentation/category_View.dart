import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
    return Scaffold(
      body: SafeArea(
        child: CategoryViewBody(),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        items: [
          TabItem(
            icon: Icon(Icons.search),
            title: 'Search',
          ),
          TabItem(
            icon: Icon(Icons.favorite_outline),
            title: 'favorite',
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
            title: 'Add',
          ),
          TabItem(
            icon: Icon(Icons.notifications_outlined),
            title: 'notification',
          ),
          TabItem(
            icon: Icon(Icons.person_outline),
            title: 'Profile',
          ),
        ],
        initialActiveIndex: 2,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
