import 'package:architecture_demo/blocs/photos_bloc.dart';
import 'package:architecture_demo/theme.dart';
import 'package:architecture_demo/utils/widget_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persist_theme/data/models/theme_model.dart';
import 'package:provider/provider.dart';

class PhotosPage extends StatefulWidget {
  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  
  BuildContext _scaffoldContext;

  @override
  void initState() {
    super.initState();
    onWidgetDidBuild(() {
      PhotosBloc bloc = BlocProvider.of<PhotosBloc>(context);
      bloc.dispatch(FetchPhotos());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    PhotosBloc bloc = BlocProvider.of<PhotosBloc>(context);
    
    return BlocListener(
      bloc: bloc,
      listener: (context, PhotosState state) async {
        if(state is Error) {
          if(_scaffoldContext != null) {
            Scaffold.of(_scaffoldContext).showSnackBar(
                SnackBar(content: Text(state.message), backgroundColor: Colors.redAccent));
          }
        }
      },
      child: BlocBuilder(
        bloc: bloc,
        builder: (context, PhotosState state){
          return Scaffold(
            appBar: AppBar(
              title: Image.asset("assets/images/pixabay_logo.png", height: 30, fit: BoxFit.fitHeight, color: DemoTheme.logoColor),
              centerTitle: true,
              actions: <Widget>[
                Switch.adaptive(value: DemoTheme.soDark, onChanged: (value) {
                  final theme = Provider.of<ThemeModel>(context);
                  theme.changeDarkMode(value);
                })
              ],
            ),
            body: Builder(builder: (context){
              _scaffoldContext = context;

              if(state is Loading) {
                return Material(child: Center(child: CircularProgressIndicator()));
              }
              
              if(state is Loaded) {
                return ListView.builder(
                  itemCount: state.photos.length,
                  itemBuilder: (BuildContext context, int index) {
                    final photoUrl = state.photos[index].getBestUrl();
                    return Image(image: CachedNetworkImageProvider(photoUrl), fit: BoxFit.fitWidth);
                  }
                );
              }
              
              // Default state if not handled above, maybe show an explosion gif
              return Material();
            }),
          );
        }
      ),
    );
  }
}
