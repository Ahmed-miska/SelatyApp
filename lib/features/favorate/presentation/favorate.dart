import 'package:flutter/material.dart';

class FavorateView extends StatelessWidget {
  const FavorateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: const Text('Person'),
      ),
    );
  }
}
