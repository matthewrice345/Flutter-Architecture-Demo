import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'VideoDetails.jser.dart';

class VideoDetails {

  VideoDetails();

  String url;
  int height;
  int width;
  int size;
}

@GenSerializer()
class VideoDetailsSerializer extends Serializer<VideoDetails> with _$VideoDetailsSerializer {}
