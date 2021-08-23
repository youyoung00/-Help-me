import 'package:flutter/foundation.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';

class MainDataModel{

  String? category;
  String? img;
  List<SubDataModel>? subData;

  MainDataModel({
    required this.category,
    required this.img,
    required this.subData
  });

  MainDataModel.init(Map<String,dynamic> e){
    this.category = e["category"].toString();
    this.img = e["img"].toString();
    this.subData = List.of(e["subData"]).map<SubDataModel>((dynamic v) {
      return SubDataModel.init(v);
    }).toList();
  }

  // factory MainDataModel.fInit(Map<String,dynamic> e){
  //   return new MainDataModel.init(e);
  // }
}
