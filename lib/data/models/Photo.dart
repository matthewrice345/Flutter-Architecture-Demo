import 'package:architecture_demo/data/models/Media.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'Photo.jser.dart';

class Photo extends Media {

  Photo();

  String previewURL;
  int previewWidth;
  int previewHeight;
  String webformatURL;
  int webformatWidth;
  int webformatHeight;
  String largeImageURL;
  String fullHDURL;
  String imageURL;
  int imageWidth;
  int imageHeight;
  int imageSize;

  String getBestUrl() {
    return fullHDURL ?? largeImageURL ?? imageURL;
  }

  String getSmallestUrl() {
    return imageURL ?? largeImageURL ?? fullHDURL;
  }
}

@GenSerializer()
class PhotoSerializer extends Serializer<Photo> with _$PhotoSerializer {}
