import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/features/alert/presentation/alert.dart';
import 'package:selaty/features/favorate/presentation/favorate.dart';
import 'package:selaty/features/home/presentation/widgets/home_view_body.dart';

import '../../ShopCart/presentation/shopcart.dart';
import '../../profile/presentation/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 2;
  @override
  void initState() {
    _pages = [
      {
        'page': const SearchView(),
      },
      {
        'page': const FavorateView(),
      },
      {
        'page': const HomeViewBody(),
      },
      {
        'page': const AlertView(),
      },
      {
        'page': const ProfileView(),
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedPageIndex]['page']!,
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixed,
        backgroundColor: Colors.white,
        items: [
          TabItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: _selectedPageIndex == 0 ? Colors.green : Colors.black,
            ),
            title: 'Search',
          ),
          TabItem(
            icon: Icon(
              Icons.favorite_outline,
              color: _selectedPageIndex == 1 ? Colors.green : Colors.black,
            ),
            title: 'favorite',
          ),
          TabItem(
            icon: Image.asset(Assets.logo),
            title: 'Add',
          ),
          TabItem(
            icon: Icon(
              Icons.notifications_outlined,
              color: _selectedPageIndex == 3 ? Colors.green : Colors.black,
            ),
            title: 'notification',
          ),
          TabItem(
            icon: Icon(
              Icons.person_outline,
              color: _selectedPageIndex == 4 ? Colors.green : Colors.black,
            ),
            title: 'Profile',
          ),
        ],
        initialActiveIndex: 2,
        onTap: _selectPage,
      ),
    );
  }
}
