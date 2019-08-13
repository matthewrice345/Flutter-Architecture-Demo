import 'package:architecture_demo/data/models/Media.dart';
import 'package:architecture_demo/data/models/VideosInfo.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'Video.jser.dart';

class Video extends Media {

  Video();

  int duration;
  @Alias("picture_id") String pictureId;
  VideosInfo videos;

  String getPreviewUrl({bool largest = false}) {
    return "https://i.vimeocdn.com/video/${pictureId}_${largest ? "1920x1080" : "960x540"}.jpg ";
  }

  List<String> tagsAsList() {
    if(tags == null || tags.isEmpty) return List();
    return tags.split(', ');
  }
}

@GenSerializer()
class VideoSerializer extends Serializer<Video> with _$VideoSerializer {}
