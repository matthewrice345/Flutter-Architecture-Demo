import 'package:flutter/widgets.dart';

void onWidgetDidBuild(Function callback) {
  WidgetsBinding.instance.addPostFrameCallback((_) => callback());
}