import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/mainConnectData.dart';

// 연결에 관련한 함수 또는 변수만 가지고 있는 클래스
class Connect {

  final String END_POINT = "http://192.168.219.197:3000";

  Future<void> connect() async{
    http.Response res = await http.get(Uri.parse(this.END_POINT));
    //print(res.body[0]);
    List li = json.decode(res.body);
    //print("변환 : ${li[0]+1} ");
  }

  Future<MainConnectData> mainConnect() async{
    try{
      http.Response res = await http.get(Uri.parse(this.END_POINT + "/musicApp"))
          .timeout(Duration(seconds: 8), onTimeout: () async => http.Response("[]", 404));
      List datas = json.decode(res.body);
      //.catchError() 함수는 http.get에서 동작하지 않음

      //   if(datas.length == 0 && res.statusCode == 404){
      //     this.viewLoadtTxt = "서버와의 연결이 지연되고 있습니다. 다시 실행해주세요";
      //     return;
      // }
      if(res.statusCode == 200 || res.statusCode == 301){
        // this.vData = datas.map<MainDataModel>((e) => MainDataModel.fInit(e)).toList();
        // return;
        return new MainConnectData(data: datas.map<MainDataModel>((e) => MainDataModel.fInit(e)).toList(), viewTxt: "");
      }
      if(res.statusCode == 404) {
        //this.viewLoadtTxt = "서버와의 연결이 지연되고 있습니다. 다시 실행해주세요";
        return new MainConnectData(
            data: [], viewTxt: "서버와의 연결이 지연되고 있습니다. 다시 실행해주세요");
      }
    }
    catch(e){}
    // this.viewLoadtTxt = "알수없는 오류가 발생했습니다. 재실행하거나 고객센터로 문의 주세요.";
    // return;
    return new MainConnectData(data: [], viewTxt: "알수없는 오류가 발생했습니다. 재실행하거나 고객센터로 문의 주세요.");
  }
}
