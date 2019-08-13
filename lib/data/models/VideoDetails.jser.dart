// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideoDetails.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$VideoDetailsSerializer implements Serializer<VideoDetails> {
  @override
  Map<String, dynamic> toMap(VideoDetails model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'url', model.url);
    setMapValue(ret, 'height', model.height);
    setMapValue(ret, 'width', model.width);
    setMapValue(ret, 'size', model.size);
    return ret;
  }

  @override
  VideoDetails fromMap(Map map) {
    if (map == null) return null;
    final obj = VideoDetails();
    obj.url = map['url'] as String;
    obj.height = map['height'] as int;
    obj.width = map['width'] as int;
    obj.size = map['size'] as int;
    return obj;
  }
}
