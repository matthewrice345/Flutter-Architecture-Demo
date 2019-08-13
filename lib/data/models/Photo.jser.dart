// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Photo.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PhotoSerializer implements Serializer<Photo> {
  @override
  Map<String, dynamic> toMap(Photo model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'previewURL', model.previewURL);
    setMapValue(ret, 'previewWidth', model.previewWidth);
    setMapValue(ret, 'previewHeight', model.previewHeight);
    setMapValue(ret, 'webformatURL', model.webformatURL);
    setMapValue(ret, 'webformatWidth', model.webformatWidth);
    setMapValue(ret, 'webformatHeight', model.webformatHeight);
    setMapValue(ret, 'largeImageURL', model.largeImageURL);
    setMapValue(ret, 'fullHDURL', model.fullHDURL);
    setMapValue(ret, 'imageURL', model.imageURL);
    setMapValue(ret, 'imageWidth', model.imageWidth);
    setMapValue(ret, 'imageHeight', model.imageHeight);
    setMapValue(ret, 'imageSize', model.imageSize);
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
  Photo fromMap(Map map) {
    if (map == null) return null;
    final obj = Photo();
    obj.previewURL = map['previewURL'] as String;
    obj.previewWidth = map['previewWidth'] as int;
    obj.previewHeight = map['previewHeight'] as int;
    obj.webformatURL = map['webformatURL'] as String;
    obj.webformatWidth = map['webformatWidth'] as int;
    obj.webformatHeight = map['webformatHeight'] as int;
    obj.largeImageURL = map['largeImageURL'] as String;
    obj.fullHDURL = map['fullHDURL'] as String;
    obj.imageURL = map['imageURL'] as String;
    obj.imageWidth = map['imageWidth'] as int;
    obj.imageHeight = map['imageHeight'] as int;
    obj.imageSize = map['imageSize'] as int;
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
