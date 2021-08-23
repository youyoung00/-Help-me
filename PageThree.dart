import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';

class ThreePage extends StatelessWidget {

  SubDataModel? subData; // 어떤 타입으로 받을 것인지 매우 중요. List 안의 Map 을 바로 subData.title 처럼 입력 가능하도록  .
  String? category;

  ThreePage( { required this.category, required this.subData } );

  @override
  Widget build(BuildContext context) {
    print(this.category);
    print(this.subData);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.brown),
        centerTitle: true,
        title: Text(
          this.category.toString(),
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
                this.subData!.title!,
                style: TextStyle(
                 fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                  this.subData!.singer!
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    this.subData!.jacket!
                  )
                )
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                this.subData!.songText!,
              ),
            ),
          ],
        )
      )
    );
  }
}
