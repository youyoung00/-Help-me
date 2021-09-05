import 'package:flutter/foundation.dart';

class SubDataModel{
  String? title;
  String? singer;
  String? jacket;
  String? songText;

  /// 모델링 1: 클래스의 기본 생성자 사용
  SubDataModel({
    required this.title,
    required this.jacket,
    required this.songText,
    required this.singer,
  });

  /// 모델링 2: 클래스의 이름있는 생성자 사용.
  SubDataModel.init(Map<String,dynamic> v){
    this.title = v["title"].toString();
    this.singer = v["singer"].toString();
    this.songText = v["songText"].toString();
    this.jacket = v["jacket"].toString();
  }

  /// 모델링 3: 팩토리 메서드로 인스턴스 반복 사용.
  factory SubDataModel.fInit(Map<String,dynamic> v){
    return SubDataModel.init(v);
  }
  // SubDataModel.init(Map<String,dynamic> v){
  //   this.title = v["title"].toString();
  //   this.jacket = v["jacket"].toString();
  //   this.songText = v["songText"].toString();
  //   this.singer = v["singer"].toString();
  // }

    //return SubDataModel.init(v);
    //return SubDataModel();

  // factory SubDataModel.fInit(Map<String,dynamic> v){
  //   return SubDataModel.fInit(v);
    //return new SubDataModel(title: , jacket: , songText: , singer: ,);
    //return new SubDataModel.init(v);
  // }
}
