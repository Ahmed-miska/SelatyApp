import 'package:flutter/material.dart';

class AleartDialogChild extends StatefulWidget {
  const AleartDialogChild({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  State<AleartDialogChild> createState() => _AleartDialogChildState();
}

class _AleartDialogChildState extends State<AleartDialogChild> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: Colors.blue,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.text!),
      ],
    );
  }
}
