// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TopSearchItem.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$TopSearchItemSerializer implements Serializer<TopSearchItem> {
  @override
  Map<String, dynamic> toMap(TopSearchItem model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'text', model.text);
    setMapValue(ret, 'count', model.count);
    return ret;
  }

  @override
  TopSearchItem fromMap(Map map) {
    if (map == null) return null;
    final obj = TopSearchItem();
    obj.text = map['text'] as String;
    obj.count = map['count'] as int;
    return obj;
  }
}
