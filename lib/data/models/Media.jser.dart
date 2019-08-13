// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Media.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$MediaSerializer implements Serializer<Media> {
  @override
  Map<String, dynamic> toMap(Media model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'pageURL', model.pageURL);
    setMapValue(ret, 'type', model.type);
    setMapValue(ret, 'tags', model.tags);
    setMapValue(ret, 'views', model.views);
    setMapValue(ret, 'downloads', model.downloads);
    setMapValue(ret, 'favorites', model.favorites);
    setMapValue(ret, 'likes', model.likes);
    setMapValue(ret, 'comments', model.comments);
    setMapValue(ret, 'user_id', model.userId);
    setMapValue(ret, 'user', model.user);
    setMapValue(ret, 'userImageURL', model.userImageURL);
    return ret;
  }

  @override
  Media fromMap(Map map) {
    if (map == null) return null;
    final obj = Media();
    obj.id = map['id'] as int;
    obj.pageURL = map['pageURL'] as String;
    obj.type = map['type'] as String;
    obj.tags = map['tags'] as String;
    obj.views = map['views'] as int;
    obj.downloads = map['downloads'] as int;
    obj.favorites = map['favorites'] as int;
    obj.likes = map['likes'] as int;
    obj.comments = map['comments'] as int;
    obj.userId = map['user_id'] as int;
    obj.user = map['user'] as String;
    obj.userImageURL = map['userImageURL'] as String;
    return obj;
  }
}
