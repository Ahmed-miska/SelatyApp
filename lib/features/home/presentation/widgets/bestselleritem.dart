import 'package:flutter/material.dart';

class BesstSellerItem extends StatelessWidget {
  const BesstSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'نبذه',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Center(child: Image.asset('assets/images/8.png')),
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 8),
              child: Text(
                'خضروات',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Text(
            'الوزن',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            '1 Kg',
            style: TextStyle(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topRight,
                height: 20,
                decoration: BoxDecoration(color: Colors.grey),
                child: Text('70 SAR'),
              )
            ],
          )
        ],
      ),
    );
  }
}
