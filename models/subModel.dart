import 'package:flutter/foundation.dart';

class SubDataModel{
  String? title;
  String? singer;
  String? jacket;
  String? songText;

  SubDataModel({
    required this.title,
    required this.jacket,
    required this.songText,
    required this.singer,
  });

  SubDataModel.init(Map<String,dynamic> v){
    this.title = v["title"].toString();
    this.jacket = v["jacket"].toString();
    this.songText = v["songText"].toString();
    this.singer = v["singer"].toString();
    //return SubDataModel.init(v);
    //return SubDataModel();
  }

  // factory SubDataModel.fInit(Map<String,dynamic> v){
  //   //return new SubDataModel();
  //   return new SubDataModel.init(v);
  // }
}
