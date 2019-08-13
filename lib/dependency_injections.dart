
import 'package:architecture_demo/data/api/api_service.dart';
import 'package:architecture_demo/data/providers/photo_provider.dart';
import 'package:architecture_demo/data/providers/video_provider.dart';
import 'package:architecture_demo/data/repositories/photo_repository.dart';
import 'package:architecture_demo/data/repositories/video_repository.dart';
import 'package:injector/injector.dart';

void setupDependencyInjections() async {
  Injector injector = Injector.appInstance;
  injector.registerSingleton<ApiService>((_) => ApiService());

  _providerDependencyInjections(injector);
  _repositoryDependencyInjections(injector);
}

void _providerDependencyInjections(Injector injector) {
  injector.registerDependency<PhotoProvider>((Injector injector) {
    var api = injector.getDependency<ApiService>();
    return PhotoProvider(api: api);
  });

  injector.registerDependency<VideoProvider>((Injector injector) {
    var api = injector.getDependency<ApiService>();
    return VideoProvider(api: api);
  });
}

void _repositoryDependencyInjections(Injector injector) {
  injector.registerDependency<PhotoRepository>((Injector injector) {
    var photoProvider = injector.getDependency<PhotoProvider>();
    return PhotoRepository(photoProvider: photoProvider);
  });

  injector.registerDependency<VideoRepository>((Injector injector) {
    var videoProvider = injector.getDependency<VideoProvider>();
    return VideoRepository(videoProvider: videoProvider);
  });
}
