import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';
import 'package:http/http.dart' as http;

class ThreePage extends StatefulWidget {

  SubDataModel? vData; // 어떤 타입으로 받을 것인지 매우 중요. List 안의 Map 을 바로 vData.title 처럼 입력 가능하도록  .
  String? category;

  ThreePage( { required this.category, required this.vData, required this.i} );
  int? i;

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {

  SubDataModel? viewData;
  int? i;

  Future<void> detailConnect() async{
   http.Response res = await http.get(Uri.parse("http://192.168.219.197:3000/detailData/${widget.i}"));
   Map<String,dynamic> detdata = json.decode(res.body);
   this.viewData = SubDataModel.fInit(detdata);
   return;
  }

  @override
  void initState() {
    new Future(() async{
      await detailConnect();
      if(!mounted) return;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(this.widget.category);
    print(this.widget.vData);
    int? i;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.brown),
        centerTitle: true,
        title: Text(
          this.widget.category.toString(),
          style: TextStyle(
            color: Colors.brown
          ),
        ),
      ),
      body: this._detailData(context),
    );
  }

  Widget _detailData(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          // children: List.of(this.detailData!).map<Widget>(
          //       (e) =>
          // ).toList()
          children: [
            Container(
              child: Text(
                //this.viewData!.title!,
                viewData!.title!,
                style: TextStyle(
                 fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                  this.widget.vData!.singer!
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    this.widget.vData!.jacket!
                  )
                )
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                this.widget.vData!.songText!,
              ),
            ),
          ],
        )
      )
    );
  }
}
