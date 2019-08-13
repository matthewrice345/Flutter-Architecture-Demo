// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PhotosResponse.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PhotosResponseSerializer
    implements Serializer<PhotosResponse> {
  Serializer<Photo> __photoSerializer;
  Serializer<Photo> get _photoSerializer =>
      __photoSerializer ??= PhotoSerializer();
  @override
  Map<String, dynamic> toMap(PhotosResponse model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'total', model.total);
    setMapValue(ret, 'totalHits', model.totalHits);
    setMapValue(
        ret,
        'hits',
        codeIterable(
            model.hits, (val) => _photoSerializer.toMap(val as Photo)));
    return ret;
  }

  @override
  PhotosResponse fromMap(Map map) {
    if (map == null) return null;
    final obj = PhotosResponse();
    obj.total = map['total'] as int;
    obj.totalHits = map['totalHits'] as int;
    obj.hits = codeIterable<Photo>(
        map['hits'] as Iterable, (val) => _photoSerializer.fromMap(val as Map));
    return obj;
  }
}
