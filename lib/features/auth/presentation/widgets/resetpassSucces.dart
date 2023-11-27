import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/features/auth/presentation/login_view.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.width / 3.5,
            ),
            Center(
              child: Container(
                height: Get.width / 1.7,
                width: Get.width / 1.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: Colors.white),
                ),
                child: const Icon(
                  Icons.key_outlined,
                  color: Colors.white,
                  size: 120,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "تم تغير كلمه المرور",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                onPressed: () {
                  Get.off(()=>const LoginView());
                },
                child: const Text(
                  "تم",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
