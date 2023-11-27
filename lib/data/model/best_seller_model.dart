class BestSellerModel {
  final String title;
  final String image;
  final String price;
  final String weight;
  final int catId;
  final String descreption;
  final String policy;

  BestSellerModel({
    required this.catId,
    required this.descreption,
    required this.policy,
     required this.image,
    required this.title,
    required this.price,
     required this.weight,
  });
}
