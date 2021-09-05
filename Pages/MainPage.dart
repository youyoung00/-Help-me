import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/mainConnectData.dart';
import 'package:jamesclass_musicapp_self/Logic/Connect.dart';
import 'package:jamesclass_musicapp_self/Pages/TwoPage.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget>_icons = [
    Icon(Icons.play_arrow_rounded),
    Icon(Icons.pause),
    Icon(Icons.stop),
  ];

  List<MainDataModel>? vData;
  String viewLoadtTxt = "로딩 중...";
  Connect connect = new Connect();

  @override
  void initState() {

    Future(() async{
      MainConnectData data = await this.connect.mainConnect();
      this.vData = data.data;
      this.viewLoadtTxt = data.viewTxt!;
      if(!mounted)return;
      setState(() {});
    });

    Future(this.connect.connect);
    this.connect.connect();
    setState(() {

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.brown,
        ),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: (){},
          )
        ],
        title: Text(
            "Music App",
          style: TextStyle(
            color: Colors.brown
          ),
        ),
        centerTitle: true,
      ),
      body: this.vData == null
          ? Center(child: Text(this.viewLoadtTxt),)
          : Container(
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0
          ),
          itemCount: this.vData?.length,
          itemBuilder: (BuildContext context, int i){
            return Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerRight,
                    color: Colors.grey.shade400,
                    child: Icon(
                      Icons.navigate_next
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context){
                                  return TwoPage(
                                    // this.musicDatas[i]["category"], // 클래스 상단 더미데이터를 직접 담아서 페이지 이동.
                                    // this.musicDatas[i]["img"],
                                    // this.musicDatas[i]["datas"],
                                    index: i,
                                    category: this.vData![i].category!, // 모델링1: 클래스 기본인스턴스로 데이터 사용.
                                    datas: this.vData![i].datas!,
                                  );
                                })
                              );
                            },
                          ),
                          //alignment: Alignment.center,
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                //this.musicDatas[i]["img"], => 클래스 상단 더미데이터 직접 사용.
                                this.vData![i].img!, // => 모델링1 : 클래스 기본 인스턴스로 데이터 사용.
                              )
                            )
                          ),
                        ),
                        Container(
                          //color: Colors.green,
                          padding: EdgeInsets.symmetric(vertical: 7.0),
                          child: Text(
                            // this.musicDatas[i]["category"],
                            this.vData![i].category!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _icons.map<Widget>((a) => Container(
                        child: a,
                      )).toList(),
                    ),
                  )
                ],
              ),
            );
          },
        )
      )
    );
  }
}
