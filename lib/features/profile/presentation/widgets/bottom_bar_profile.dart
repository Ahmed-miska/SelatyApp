import 'package:flutter/material.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/profile/presentation/widgets/bottombarprofileitem.dart';

class BottomBarPrifile extends StatelessWidget {
  const BottomBarPrifile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomBarProfileItem(
            mainColor: Colors.red,
            title: 'مركز الدعم',
            primCOlor: Color(0xffef6c74),
            icon: Icon(
              Icons.supervised_user_circle,
            )),
        BottomBarProfileItem(
          mainColor: kPrimarColor,
          title: 'خروج',
          primCOlor: Color(0xff62d4a0),
          icon: Icon(Icons.logout_outlined),
        ),
      ],
    );
  }
}
