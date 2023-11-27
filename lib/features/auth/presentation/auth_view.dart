import 'package:flutter/material.dart';
import 'package:selaty/features/auth/presentation/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthViewBody(),
    );
  }
}