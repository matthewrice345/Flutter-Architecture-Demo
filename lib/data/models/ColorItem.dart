import 'package:flutter/material.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'ColorItem.jser.dart';

class ColorItem {

  ColorItem();

  Color color;
  int index;
  String title;
  String path;
  Color textColor;

  ColorItem.make(this.color, this.index, this.title, this.path, this.textColor);
}

@GenSerializer()
class ColorItemSerializer extends Serializer<ColorItem> with _$ColorItemSerializer {}
