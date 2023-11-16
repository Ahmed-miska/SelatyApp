import 'package:get/get.dart';
import 'package:selaty/data/static_data/static_data.dart';

abstract class HomeViewContrroler extends GetxController {
  bestlist();
  categorylist();
  bestSellerList();
}

class HomeViewContrrolerImp extends HomeViewContrroler {
  @override
  bestlist() {
    return bestSellerPhotosList;
  }

  @override
  categorylist() {
    return categorylist();
  }

  @override
  bestSellerList() {
    return bestSellerList();
  }
}
