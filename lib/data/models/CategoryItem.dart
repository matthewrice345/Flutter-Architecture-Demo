import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'CategoryItem.jser.dart';

class CategoryItem {

  CategoryItem();

  String title;
  String subTitle;
  String code;
  String imagePath;

  CategoryItem.make(this.title, this.subTitle, this.code, this.imagePath);
}

@GenSerializer()
class CategoryItemSerializer extends Serializer<CategoryItem> with _$CategoryItemSerializer {}
