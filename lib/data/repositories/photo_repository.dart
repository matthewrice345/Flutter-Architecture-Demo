import 'package:architecture_demo/data/models/PhotosResponse.dart';
import 'package:architecture_demo/data/providers/photo_provider.dart';
import 'package:meta/meta.dart';

class PhotoRepository {

  PhotoRepository({@required this.photoProvider});

  final PhotoProvider photoProvider;

  Future<PhotosResponse> getPhotos({int page = 1, int perPage = 30, String order}) async  {
    final response = await photoProvider.getPhotos(page: page, perPage: perPage, order: order);
    if(response.successful) {
      PhotosResponse photos = PhotosResponseSerializer().fromMap(response.body);
      return photos;
    } else return null;
  }

  Future<PhotosResponse> getPhotosByCategory(String query, {int page = 1, int perPage = 30, String category}) async  {
    final response = await photoProvider.getPhotosByCategory(query, page: page, perPage: perPage, category: category);
    if(response.successful) {
      PhotosResponse photos = PhotosResponseSerializer().fromMap(response.body);
      return photos;
    } else return null;
  }

  Future<PhotosResponse> searchPhotos(String query, {int page = 1, int perPage = 30, String order}) async  {
    final response = await photoProvider.searchPhotos(query, page: page, perPage: perPage, order: order);
    if(response.successful) {
      PhotosResponse photos = PhotosResponseSerializer().fromMap(response.body);
      return photos;
    } else return null;
  }
}