import 'package:architecture_demo/data/models/Video.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'VideosResponse.jser.dart';

class VideosResponse {

  VideosResponse();

  int total = 0;
  int totalHits = 0;
  List<Video> hits = List();

}

@GenSerializer()
class VideosResponseSerializer extends Serializer<VideosResponse> with _$VideosResponseSerializer {}
