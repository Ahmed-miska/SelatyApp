import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alert_dialog_child_row.dart';

class AleartDiloug extends StatefulWidget {
  const AleartDiloug({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  State<AleartDiloug> createState() => _AleartDilougState();
}

class _AleartDilougState extends State<AleartDiloug> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AleartDialogChild(
              text: 'النوع',
            ),
            AleartDialogChild(
              text: 'السعر',
            ),
            AleartDialogChild(
              text: 'الوزن',
            ),
            AleartDialogChild(
              text: 'البلد',
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: const Text('الغاء'),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: const Text('تاكيد'),
          ),
        ),
      ],
    );
    ;
  }
}
