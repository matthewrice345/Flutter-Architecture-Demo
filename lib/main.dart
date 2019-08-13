import 'package:architecture_demo/Strings.dart';
import 'package:architecture_demo/blocs/photos_bloc.dart';
import 'package:architecture_demo/dependency_injections.dart';
import 'package:architecture_demo/pages/photos_page.dart';
import 'package:architecture_demo/utils/screen_utils.dart';
import 'package:architecture_demo/theme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persist_theme/persist_theme.dart';
import 'package:provider/provider.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

final _themeModel = ThemeModel(
  customDarkTheme: DemoTheme.dark,
  customLightTheme: DemoTheme.light,
);

bool get isDarkMode => _themeModel.darkMode;

void main() {
  setupDependencyInjections();
  BlocSupervisor.delegate = DemoBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenableProvider<ThemeModel>(
      builder: (_) => _themeModel..init()..addListener(() {
        ScreenUtils().setStatusBarColor();
      }),
      child: MultiBlocProvider(
          providers: [
            BlocProvider<PhotosBloc>(builder: (context) => PhotosBloc()),
          ],
          child: Consumer<ThemeModel>(
              builder: (context, model, child) {
                return MaterialApp(
                    supportedLocales: const [
                      const Locale('en'),
                    ],
                    localizationsDelegates: [
                      DefaultMaterialLocalizations.delegate,
                      DefaultWidgetsLocalizations.delegate,
                      DemoLocalizationsDelegate()
                    ],
                    theme: model.theme,
                    debugShowCheckedModeBanner: false,
                    home: RoutingPage(),
                    localeResolutionCallback: (locale, _) {
                      return locale;
                    },
                );
              })
      )
    );
  }
}

class DemoBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    debugPrint("Bloc - $event");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint("Bloc - $transition");
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    debugPrint("Bloc - $error");
  }
}

class RoutingPage extends StatefulWidget {
  RoutingPage({Key key}) : super(key: key);

  @override
  _RoutingPageState createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future _loadData() async {
    // Do stuff needed at app load time
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    // Sets up our screen utils and applies defaults
    ScreenUtils.instance.init(context);

    if (_loading) {
      return Material(color: Colors.white, child: Center(child: CircularProgressIndicator()));
    } else {
      return PhotosPage();
    }
  }
}
