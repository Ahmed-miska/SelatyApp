import 'package:flutter/material.dart';
import 'package:selaty/features/auth/presentation/widgets/check_phone_view_body.dart';

class CheckPhoneView extends StatelessWidget {
  const CheckPhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CheckPhoneViewBody(),
      ),
    );
  }
}
