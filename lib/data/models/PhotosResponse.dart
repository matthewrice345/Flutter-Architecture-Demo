import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:architecture_demo/data/models/Photo.dart';

//flutter packages pub run build_runner build

part 'PhotosResponse.jser.dart';

class PhotosResponse {

  PhotosResponse();

  int total = 0;
  int totalHits = 0;
  List<Photo> hits = List();

}

@GenSerializer()
class PhotosResponseSerializer extends Serializer<PhotosResponse> with _$PhotosResponseSerializer {}
