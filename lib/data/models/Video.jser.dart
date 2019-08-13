// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Video.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$VideoSerializer implements Serializer<Video> {
  Serializer<VideosInfo> __videosInfoSerializer;
  Serializer<VideosInfo> get _videosInfoSerializer =>
      __videosInfoSerializer ??= VideosInfoSerializer();
  @override
  Map<String, dynamic> toMap(Video model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'duration', model.duration);
    setMapValue(ret, 'picture_id', model.pictureId);
    setMapValue(ret, 'videos', _videosInfoSerializer.toMap(model.videos));
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'pageURL', model.pageURL);
    setMapValue(ret, 'type', model.type);
    setMapValue(ret, 'tags', model.tags);
    setMapValue(ret, 'views', model.views);
    setMapValue(ret, 'downloads', model.downloads);
    setMapValue(ret, 'favorites', model.favorites);
    setMapValue(ret, 'likes', model.likes);
    setMapValue(ret, 'comments', model.comments);
    setMapValue(ret, 'userId', model.userId);
    setMapValue(ret, 'user', model.user);
    setMapValue(ret, 'userImageURL', model.userImageURL);
    return ret;
  }

  @override
  Video fromMap(Map map) {
    if (map == null) return null;
    final obj = Video();
    obj.duration = map['duration'] as int;
    obj.pictureId = map['picture_id'] as String;
    obj.videos = _videosInfoSerializer.fromMap(map['videos'] as Map);
    obj.id = map['id'] as int;
    obj.pageURL = map['pageURL'] as String;
    obj.type = map['type'] as String;
    obj.tags = map['tags'] as String;
    obj.views = map['views'] as int;
    obj.downloads = map['downloads'] as int;
    obj.favorites = map['favorites'] as int;
    obj.likes = map['likes'] as int;
    obj.comments = map['comments'] as int;
    obj.userId = map['userId'] as int;
    obj.user = map['user'] as String;
    obj.userImageURL = map['userImageURL'] as String;
    return obj;
  }
}
