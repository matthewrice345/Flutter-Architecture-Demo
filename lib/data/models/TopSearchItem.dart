import 'package:jaguar_serializer/jaguar_serializer.dart';

//flutter packages pub run build_runner build

part 'TopSearchItem.jser.dart';

class TopSearchItem {

  TopSearchItem();

  String text;
  int count;

  TopSearchItem.make(this.text, this.count);
}

@GenSerializer()
class TopSearchItemSerializer extends Serializer<TopSearchItem> with _$TopSearchItemSerializer {}
