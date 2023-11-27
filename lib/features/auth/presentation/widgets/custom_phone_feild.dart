import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({Key? key,required this.controller}) : super(key: key);
final  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      languageCode: "ar",
      initialCountryCode: 'EG',
      disableLengthCheck: true,
      keyboardType: TextInputType.phone,
      controller: controller,
      textAlign: TextAlign.left,
      dropdownIconPosition: IconPosition.leading,
      decoration: const InputDecoration(
        // hintText: AppStrings.phoneNumberHint,
        border: UnderlineInputBorder(),
        suffixIcon: Icon(
          Icons.highlight_remove_sharp,
          color: Colors.green,
        ),
        hintTextDirection: TextDirection.rtl,
      ),
    );
  }
}
