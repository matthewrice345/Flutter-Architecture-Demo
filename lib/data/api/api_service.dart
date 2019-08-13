import 'package:architecture_demo/data/api/environment.dart';
import 'package:architecture_demo/data/api/interceptors.dart';
import 'package:dio/dio.dart';

final environmentTypes = <EnvironmentType>[
  EnvironmentType.PROD,
  EnvironmentType.DEV
];

class ApiService {

  static ApiService _instance;
  factory ApiService() => _instance ??= ApiService._();

  ApiService._();

  static const String USER_AGENT = "user-agent";
  static const _timeout = 5000;

  bool get isInDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }

  Environment _env = _Prod();
  Environment get env => _env;

  Dio get dio => _dio();
  Dio _dio() {
    final options = BaseOptions(
      baseUrl: _env.baseUrl,
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      //TODO: add any headers here if desired
      headers: {}
    );

    var dio = Dio(options);

    dio.interceptors.add(requestInterceptor(dio, _env));
    dio.interceptors.add(responseInterceptor(dio, _env));
    dio.interceptors.add(userAgentInterceptor(dio));
    return dio;
  }

  void setEnvironment(EnvironmentType type) {
    print("Setting environment to $type");
    switch(type) {
      case EnvironmentType.DEV: _env = _Dev(); break;
      default: _env = _Prod();
    }
  }
}

class _Prod extends Environment {
  @override EnvironmentType get type => EnvironmentType.PROD;
  @override String get baseUrl => "https://pixabay.com";
  //TODO: add your api key here
  @override String get apiKey => "add your api key here";
}

class _Dev extends Environment {
  @override EnvironmentType get type => EnvironmentType.DEV;
  @override String get baseUrl => "https://pixabay.com";
  //TODO: add your api key here
  @override String get apiKey => "add your api key here";
}
