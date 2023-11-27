import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  const AlertView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 100,width: 100,alignment: Alignment.center,
      child: const Text('Alert'),),
    );
  }
}