import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/constant.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/features/profile/presentation/widgets/bottom_bar_profile.dart';
import 'package:selaty/features/profile/presentation/widgets/profile_Grid_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Column(
                children: [
                  // SizedBox(height: 30),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     CustomBackButton(
                  //       icon: Icon(
                  //         Icons.calendar_month_outlined,
                  //       ),
                  //     ),
                  //     CustomBackButton(
                  //       onTap: () {
                  //         Get.back();
                  //       },
                  //       icon: Icon(Icons.arrow_back_ios),
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: 50.h),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 150,
                              alignment: Alignment.bottomCenter,
                              width: MediaQuery.of(context).size.width * .9,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'احمد مسكه',
                                      style: Styles.textStyle20
                                          .copyWith(color: kwhiteColor),
                                    ),
                                    Text(
                                      'Ahmed@gmail.com',
                                      style: Styles.textStyle18
                                          .copyWith(color: kwhiteColor),
                                    ),
                                  ],
                                ),
                              )
                              // ClipRRect(
                              //   borderRadius: BorderRadius.only(
                              //       bottomLeft: Radius.circular(15),
                              //       bottomRight: Radius.circular(15)),
                              //   child: Image.asset(
                              //     'assets/images/1.jpg',
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                              ),
                          Positioned(
                            top: -50,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage(
                                        'assets/images/profile.jpg'),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Positioned(
                          //   top: -70,
                          //   child: Container(
                          //     padding: EdgeInsets.all(5),
                          //     decoration: BoxDecoration(
                          //       color: Colors.white,
                          //       borderRadius: BorderRadius.circular(100),
                          //     ),
                          //     child: CircleAvatar(
                          //       radius: 60,
                          //       backgroundColor: Colors.white,
                          //       child: Center(
                          //         child: Image.asset(
                          //           'assets/images/1.jpg',
                          //           height: 100,
                          //           fit: BoxFit.contain,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      const double itemWidth = 100.0;
                      final int crossAxisCount =
                          (constraints.maxWidth / itemWidth).floor();
                      return ProfileGridView(
                        count: crossAxisCount,
                      );
                    },
                  ),
                  const BottomBarPrifile(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
