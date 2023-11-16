import 'package:flutter/material.dart';
import 'package:selaty/features/auth/presentation/widgets/check_otp_view_body.dart';

class CheckOTPView extends StatelessWidget {
  const CheckOTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CheckOTPViewBody()),
    );
  }
}
