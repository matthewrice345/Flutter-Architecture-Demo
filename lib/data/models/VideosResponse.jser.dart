// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideosResponse.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$VideosResponseSerializer
    implements Serializer<VideosResponse> {
  Serializer<Video> __videoSerializer;
  Serializer<Video> get _videoSerializer =>
      __videoSerializer ??= VideoSerializer();
  @override
  Map<String, dynamic> toMap(VideosResponse model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'total', model.total);
    setMapValue(ret, 'totalHits', model.totalHits);
    setMapValue(
        ret,
        'hits',
        codeIterable(
            model.hits, (val) => _videoSerializer.toMap(val as Video)));
    return ret;
  }

  @override
  VideosResponse fromMap(Map map) {
    if (map == null) return null;
    final obj = VideosResponse();
    obj.total = map['total'] as int;
    obj.totalHits = map['totalHits'] as int;
    obj.hits = codeIterable<Video>(
        map['hits'] as Iterable, (val) => _videoSerializer.fromMap(val as Map));
    return obj;
  }
}
