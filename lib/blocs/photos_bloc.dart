import 'package:architecture_demo/Strings.dart';
import 'package:architecture_demo/data/models/Photo.dart';
import 'package:architecture_demo/data/repositories/photo_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:injector/injector.dart';
import 'package:meta/meta.dart';

//region Events

abstract class PhotosEvent extends Equatable {
  PhotosEvent([List props = const []]) : super(props);
}

class FetchPhotos extends PhotosEvent {
  FetchPhotos({this.page = 1}) : super([page]);
  final int page;
}

//endregion

//region State

abstract class PhotosState extends Equatable {
  PhotosState([List props = const []]) : super(props);
}

class Loading extends PhotosState {
  Loading() : super([]);
}

class Loaded extends PhotosState {
  Loaded({@required this.photos, this.totalPhotosCount}) : super([photos, totalPhotosCount]);
  final List<Photo> photos;
  final int totalPhotosCount;
}

class Error extends PhotosState {
  Error({this.message}) : super([message]);
  final String message;
}

//endregion

//region bloc

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final photoRepository = Injector.appInstance.getDependency<PhotoRepository>();

  bool get expanded => _expanded;
  bool _expanded = false;

  int get progress => _progress;
  int _progress = 1;

  @override
  PhotosState get initialState => Loading();

  @override
  Stream<PhotosState> mapEventToState(PhotosEvent event) async* {
    if (event is FetchPhotos) {
      try {
        yield Loading();

        final response = await photoRepository.getPhotos(page: event.page);

        yield Loaded(photos: response.hits, totalPhotosCount: response.totalHits);
      } catch (e) {
        yield Error(message: Strings().photoLoadError);
      }
    }
  }
}

//endregion