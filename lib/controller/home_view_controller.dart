import 'package:get/get.dart';
import 'package:selaty/data/static_data/bestSellerList.dart';
import 'package:selaty/data/static_data/bestSellerPhotosList.dart';

abstract class HomeViewContrroler extends GetxController {
  bestlist();
  categorylist();
  bestsellerList();
}

class HomeViewContrrolerImp extends HomeViewContrroler {
  @override
  bestlist() {
    return bestSellerPhotosList;
  }

  @override
  categorylist() {
    return categorylist;
  }

  @override
  bestsellerList() {
    return bestSellerList;
  }
}
