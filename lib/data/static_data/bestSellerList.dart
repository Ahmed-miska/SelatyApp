import 'package:selaty/core/constants/AssetsManeger.dart';
import 'package:selaty/data/model/best_seller_model.dart';

List<BestSellerModel> bestSellerList = [
  BestSellerModel(
    title: 'فلفل',
    weight: '1',
    price: '50',
    image: Assets.flfl,
    catId: 2,
    descreption:
        'الفلفل هو نوع من التوابل والخضروات ذو طعم حار يتراوح بين اللطيف إلى الحاد، يُستخدم في إعداد الطعام لإضفاء نكهة قوية وتنوع، ويتميز بألوانه المتنوعة مثل الأحمر والأخضر والأصفر',
    policy: 'يجب ارجاع المنتج في خلال 14 يوم',
  ),
  BestSellerModel(
    image: Assets.nap,
    title: 'عنب',
    price: '40',
    weight: '2',
    catId: 1,
    descreption:
        'العنب هو فاكهة لذيذة ومغذية، ذات حبيبات مائية عصيرة، ويتميز بتنوع ألوانه من الأخضر إلى الأحمر والأسود',
    policy: 'يجب ارجاع المنتج في خلال 14 يوم',
  ),
  BestSellerModel(
    image: Assets.apple,
    title: 'تفاح',
    price: '40',
    weight: '2',
    catId: 1,
    descreption:
        'التفاح هو فاكهة لذيذة ومغذية، يتميز بقشرته اللامعة والمليئة بالألوان، ولحمه العصير والمتنوع النكهات، ويُعتبر مصدرًا غنيًا بالفيتامينات والألياف الصحية',
    policy: 'يجب ارجاع المنتج في خلال 14 يوم',
  ),
  BestSellerModel(
    image: Assets.yar,
    title: 'خيار',
    price: '50',
    weight: '3',
    catId: 2,
    descreption:
        'الخيار هو نبات ذو أوراق خضراء مستديرة الشكل، يتميز بطعم منعش ولذيذ، ويستخدم عادة في الطهي وصنع السلطات، كما يحتوي على قيم غذائية هامة ويُعتبر منخفض السعرات الحرارية',
    policy: 'يجب ارجاع المنتج في خلال 14 يوم',
  ),
  BestSellerModel(
    image: Assets.moz,
    title: 'موز',
    price: '40',
    weight: '2',
    catId: 1,
    descreption:
        'الموز هو فاكهة لذيذة وغنية بالعناصر الغذائية، ذات لون أصفر قشدي، قشرته سهلة التقشير، ولحمته ناعمة وحلوة، يعتبر مصدرًا ممتازًا للبوتاسيوم والفيتامينات مثل فيتامين C وفيتامين B6',
    policy: 'يجب ارجاع المنتج في خلال 14 يوم',
  ),
];
