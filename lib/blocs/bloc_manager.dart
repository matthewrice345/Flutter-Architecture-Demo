import 'package:flutter/widgets.dart';

typedef BlocManagerListener = void Function(BuildContext context);

class BlocManager extends StatefulWidget {
  BlocManager({Key key,
    @required this.child,
    @required this.initState
  }) : super(key: key);

  final Widget child;
  final BlocManagerListener initState;

  @override
  _BlocManagerState createState() => _BlocManagerState();
}

class _BlocManagerState extends State<BlocManager> {

  bool _didDependenciesChangeCalled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didDependenciesChangeCalled) {
      widget.initState(context);
    }
    _didDependenciesChangeCalled = true;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
