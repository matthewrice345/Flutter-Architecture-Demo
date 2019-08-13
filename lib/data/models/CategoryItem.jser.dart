// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryItem.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$CategoryItemSerializer implements Serializer<CategoryItem> {
  @override
  Map<String, dynamic> toMap(CategoryItem model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'title', model.title);
    setMapValue(ret, 'subTitle', model.subTitle);
    setMapValue(ret, 'code', model.code);
    setMapValue(ret, 'imagePath', model.imagePath);
    return ret;
  }

  @override
  CategoryItem fromMap(Map map) {
    if (map == null) return null;
    final obj = CategoryItem();
    obj.title = map['title'] as String;
    obj.subTitle = map['subTitle'] as String;
    obj.code = map['code'] as String;
    obj.imagePath = map['imagePath'] as String;
    return obj;
  }
}
