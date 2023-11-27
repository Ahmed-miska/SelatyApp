import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/constants/styles.dart';
import 'package:selaty/features/home/presentation/widgets/alert_dilog.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white),
              child: TextField(
                controller: controller,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    hintText: '...البحث عن المنتجات',
                    hintStyle:  Styles.textStyle18,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.clear();
                      },
                      child: const Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: InkWell(
              onTap: () {
                showDialog(
                  builder: (context) {
                    return const AleartDiloug();
                  },
                  context: context,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: const Icon(
                    Icons.filter_list_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
