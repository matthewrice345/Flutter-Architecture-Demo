import 'package:architecture_demo/data/models/VideosResponse.dart';
import 'package:architecture_demo/data/providers/video_provider.dart';
import 'package:meta/meta.dart';

class VideoRepository {

  VideoRepository({@required this.videoProvider});

  final VideoProvider videoProvider;

  Future<VideosResponse> getPhotos({int page = 1, int perPage = 30, String order}) async  {
    final response = await videoProvider.getVideos(page: page, perPage: perPage, order: order);
    if(response.successful) {
      VideosResponse videos = VideosResponseSerializer().fromMap(response.body);
      return videos;
    } else return null;
  }

  Future<VideosResponse> searchVideos(String query, {int page = 1, int perPage = 30, String order}) async  {
    final response = await videoProvider.searchPhotos(query, page: page, perPage: perPage, order: order);
    if(response.successful) {
      VideosResponse photos = VideosResponseSerializer().fromMap(response.body);
      return photos;
    } else return null;
  }
}