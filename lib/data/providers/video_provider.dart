import 'package:architecture_demo/data/api/api_response.dart';
import 'package:architecture_demo/data/api/api_service.dart';
import 'package:meta/meta.dart';
import 'package:query_params/query_params.dart';

class VideoProvider {
  VideoProvider({@required this.api});

  ApiService api;

  Map<String, dynamic> get defaultParams => {
    "key": api.env.apiKey,
    "safesearch": false,
    "image_type": "video" // all | photo | illustration | vector
  };

  Future<ApiResponse> getVideos({int page = 1, int perPage = 30, String order}) async {
    URLQueryParams params = URLQueryParams();
    defaultParams.forEach((k, v) => params.append(k, v));
    params.append('page', page);
    params.append("per_page", perPage);

    if(order != null) params.append("order", order);

    try {
      final response = await api.dio.get("/api/videos?$params");
      return ApiResponse.success(response);
    } catch(e) {
      return ApiResponse.failure(e, message: "Failed to get videos");
    }
  }

  Future<ApiResponse> searchPhotos(String query, {int page = 1, int perPage = 30, String order}) async {
    URLQueryParams params = URLQueryParams();
    defaultParams.forEach((k, v) => params.append(k, v));
    params.append('page', page);
    params.append("per_page", perPage);
    params.append("q", query);

    if(order != null) params.append("order", order);

    try {
      final response = await api.dio.get("/api/videos?$params");
      return ApiResponse.success(response);
    } catch(e) {
      return ApiResponse.failure(e, message: "Failed to search videos");
    }
  }
}
