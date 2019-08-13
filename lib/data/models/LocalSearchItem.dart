import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'LocalSearchItem.jser.dart';

class LocalSearchItem {

  LocalSearchItem();

  String text;
  String date;

  LocalSearchItem.make(this.text){
    date = DateTime.now().toIso8601String();
  }
}

@GenSerializer()
class LocalSearchItemSerializer extends Serializer<LocalSearchItem> with _$LocalSearchItemSerializer {}
