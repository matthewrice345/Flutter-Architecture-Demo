// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalSearchItem.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$LocalSearchItemSerializer
    implements Serializer<LocalSearchItem> {
  @override
  Map<String, dynamic> toMap(LocalSearchItem model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'text', model.text);
    setMapValue(ret, 'date', model.date);
    return ret;
  }

  @override
  LocalSearchItem fromMap(Map map) {
    if (map == null) return null;
    final obj = LocalSearchItem();
    obj.text = map['text'] as String;
    obj.date = map['date'] as String;
    return obj;
  }
}
