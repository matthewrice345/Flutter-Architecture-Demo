import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'dart:io';
import 'package:architecture_demo/theme.dart';
import 'package:architecture_demo/main.dart' as Main;

class ScreenUtils {
  static const _TABLET_MIN_WIDTH = 720.0;

  static final ScreenUtils instance = ScreenUtils._private();
  ScreenUtils._private();
  factory ScreenUtils() => instance;

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;

  double _screenWidth = 0.0;
  double _screenHeight = 0.0;

  ScreenUtils init(BuildContext context) {
    this._screenWidth = MediaQuery.of(context).size.width;
    this._screenHeight = MediaQuery.of(context).size.height;
    setPortrait();
    return this;
  }

  ScreenUtils sizeUpdate(BoxConstraints constraints) {
    final Size size = constraints.biggest;
    _screenHeight = size.height;
    _screenWidth = size.width;
    return this;
  }

  /// returns [percent] in the form of 0.60 for sixty percent
  double percentWidth(double percent) => _screenWidth * percent;
  /// returns [percent] in the form of 0.60 for sixty percent
  double percentHeight(double percent) => _screenHeight * percent;

  Size get screenSize => Size(_screenWidth, _screenHeight);

  bool get smallScreenHeight => _screenHeight < 700;

  bool get isTablet => calculateShortSize >= _TABLET_MIN_WIDTH;

  double get calculateShortSize => _screenHeight < _screenWidth ? _screenHeight : _screenWidth;

  bool get isPhone => !isTablet;

  bool get isSmallPhone => isPhone && calculateShortSize < 400;

  bool get isIos => Platform.isIOS;

  bool get isAndroid => Platform.isAndroid;

  void setPortrait() => SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);

  void setStatusBarColor() {
    if(Main.isDarkMode) {
      setStatusBarDark();
    } else {
      setStatusBarLight();
    }
  }

  void setStatusBarNavBlue() {
    FlutterStatusbarcolor.setStatusBarColor(DemoTheme.accentColor.shade400);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  void setStatusBarLight() {
    FlutterStatusbarcolor.setStatusBarColor(DemoTheme.lightStatusbarColor);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  void setStatusBarDark() {
    FlutterStatusbarcolor.setStatusBarColor(DemoTheme.darkStatusbarColor);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  void closeKeyboard(BuildContext context) => FocusScope.of(context).requestFocus(FocusNode());
}