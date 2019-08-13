import 'package:architecture_demo/data/api/api_service.dart';
import 'package:architecture_demo/data/api/environment.dart';
import 'package:dio/dio.dart';

InterceptorsWrapper requestInterceptor(Dio dio, Environment env) => InterceptorsWrapper(
  onRequest: (RequestOptions options) {
    final uri = options.uri.toString();

    //TODO: Add any headers needed here

    if(ApiService().isInDebugMode) {
      print("Api - _createHeaderInterceptor ${uri.toString()} with headers: ${options.headers}");
      print("Api - Request Body: ${options.data}");
    }

    return options;
  },
);

InterceptorsWrapper responseInterceptor(Dio dio, Environment env) => InterceptorsWrapper(
    onResponse: (Response response) {

      if(ApiService().isInDebugMode) {
        print("Api - Response headers");
        response?.headers?.forEach((k, v) {
          v.forEach((s) => print("$k , $s"));
        });
      }

      //TODO: Cache any headers here if needed

      return response;
    }
);

InterceptorsWrapper userAgentInterceptor(Dio dio) => InterceptorsWrapper(
    onRequest: (RequestOptions options) async {
      //TODO: add your user agent here
      options.headers.putIfAbsent(ApiService.USER_AGENT, () => "android.ios.flutter.fun");
      return options;
    }
);