import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'Media.jser.dart';

class Media {

  Media();

  int id;
  String pageURL;
  String type;
  String tags;
  int views;
  int downloads;
  int favorites;
  int likes;
  int comments;
  @Alias("user_id") int userId;
  String user;
  String userImageURL;

  List<String> tagsAsList() {
    if(tags == null || tags.isEmpty) return List();
    return tags.split(', ');
  }
}

@GenSerializer()
class MediaSerializer extends Serializer<Media> with _$MediaSerializer {}
