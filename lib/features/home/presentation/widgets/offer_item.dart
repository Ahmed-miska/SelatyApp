import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        child: Column(
          children: [
            Text(
              'صفه',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '50%',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              'خصم',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
