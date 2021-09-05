import 'package:flutter/foundation.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';

class MainDataModel{

  String? category;
  String? img;
  List<SubDataModel>? datas;

  /// 모델링1 : 클래스의 기본 생성자를 통하여 MainPage에서 변수에 대입하여 사용.
  MainDataModel({
    required this.category,
    required this.img,
    required this.datas
  });

  /// 모델링2 : 클래스의 이름있는 생성자함수로 데이터 사용.
  MainDataModel.init(Map<String,dynamic> e){
    this.category = e["category"].toString();
    this.img = e["img"].toString();
    this.datas = List.from(e["datas"]).map<SubDataModel>((dynamic v){
      //return SubDataModel.init(v);
      return SubDataModel.fInit(v);
    }).toList();
  }

  /// 모델링 3 : Dart 의 클래스 팩토리메서드 + 기본 생성자(MainDataModel) + 이름있는 생성자(SubDataModel) return 으로 모델링.
  /// 여러 인스턴스를 생성해서 사용할 경우에 팩토리를 사용하면 좋다.
  factory MainDataModel.fInit(Map<String,dynamic> e){
    /// 모델링 3-1번 factory 예시 -> 기본 생성자 리턴.
  // return MainDataModel(
  //   category: e["category"].toString(),
  //   img: e["img"].toString(),
  //   subData: List.from(e["datas"]).map<SubDataModel>((v) => SubDataModel.init(v)).toList(),
  // );

    /// 모델링 3-2번 factory 예시 -> factory 메서드의 반환값으로 만들어두었던 이름있는 생성자를 사용.
    return MainDataModel.init(e);
  }
}
