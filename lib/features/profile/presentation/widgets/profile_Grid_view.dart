import 'package:flutter/material.dart';
import 'package:selaty/features/profile/presentation/widgets/profile_item.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({Key? key, required this.count}) : super(key: key);
  final int? count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count!,
        ),
        children: [
          const ProfileItem(
            title: "مدفوعاتي",
            icon: Icons.payments_outlined,
          ),
          const ProfileItem(
            title: "طلباتي",
            icon: Icons.shopping_bag_outlined,
          ),
          const ProfileItem(
            title: "عني",
            icon: Icons.account_box_outlined,
          ),
          const ProfileItem(
            title: "رمز ترويجي",
            icon: Icons.local_offer_sharp,
          ),
          const ProfileItem(
            title: "المعاملات",
            icon: Icons.attach_money_outlined,
          ),
          const ProfileItem(
            title: "المفضل لدي",
            icon: Icons.favorite_border_outlined,
          ),
          const ProfileItem(
            title: "اعدادات",
            icon: Icons.settings,
          ),
          const ProfileItem(
            title: "تنبيه",
            icon: Icons.notifications_active_outlined,
          ),
          ProfileItem(
            title: "عنواني",
            icon: Icons.location_on_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
