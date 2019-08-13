// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideosInfo.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$VideosInfoSerializer implements Serializer<VideosInfo> {
  Serializer<VideoDetails> __videoDetailsSerializer;
  Serializer<VideoDetails> get _videoDetailsSerializer =>
      __videoDetailsSerializer ??= VideoDetailsSerializer();
  @override
  Map<String, dynamic> toMap(VideosInfo model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'large', _videoDetailsSerializer.toMap(model.large));
    setMapValue(ret, 'medium', _videoDetailsSerializer.toMap(model.medium));
    setMapValue(ret, 'small', _videoDetailsSerializer.toMap(model.small));
    setMapValue(ret, 'tiny', _videoDetailsSerializer.toMap(model.tiny));
    return ret;
  }

  @override
  VideosInfo fromMap(Map map) {
    if (map == null) return null;
    final obj = VideosInfo();
    obj.large = _videoDetailsSerializer.fromMap(map['large'] as Map);
    obj.medium = _videoDetailsSerializer.fromMap(map['medium'] as Map);
    obj.small = _videoDetailsSerializer.fromMap(map['small'] as Map);
    obj.tiny = _videoDetailsSerializer.fromMap(map['tiny'] as Map);
    return obj;
  }
}
