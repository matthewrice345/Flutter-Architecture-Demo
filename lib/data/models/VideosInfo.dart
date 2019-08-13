import 'package:architecture_demo/data/models/VideoDetails.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'VideosInfo.jser.dart';

class VideosInfo {

  VideosInfo();

  VideoDetails large;
  VideoDetails medium;
  VideoDetails small;
  VideoDetails tiny;

  String getBestUrl() {
    return large.url ?? medium.url ?? small.url ?? tiny.url;
  }
}

@GenSerializer()
class VideosInfoSerializer extends Serializer<VideosInfo> with _$VideosInfoSerializer {}
