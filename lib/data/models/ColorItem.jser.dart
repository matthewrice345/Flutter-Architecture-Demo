// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ColorItem.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$ColorItemSerializer implements Serializer<ColorItem> {
  @override
  Map<String, dynamic> toMap(ColorItem model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'color', passProcessor.serialize(model.color));
    setMapValue(ret, 'index', model.index);
    setMapValue(ret, 'title', model.title);
    setMapValue(ret, 'path', model.path);
    setMapValue(ret, 'textColor', passProcessor.serialize(model.textColor));
    return ret;
  }

  @override
  ColorItem fromMap(Map map) {
    if (map == null) return null;
    final obj = ColorItem();
    obj.color = passProcessor.deserialize(map['color']);
    obj.index = map['index'] as int;
    obj.title = map['title'] as String;
    obj.path = map['path'] as String;
    obj.textColor = passProcessor.deserialize(map['textColor']);
    return obj;
  }
}
