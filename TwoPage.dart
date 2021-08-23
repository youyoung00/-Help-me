import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';
import 'package:jamesclass_musicapp_self/Pages/ThreePage.dart';

class TwoPage extends StatelessWidget {


  String category;
  List<SubDataModel>? subData;

  TwoPage({required this.category, required this.subData});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.brown),
        centerTitle: true,
        title: Text(
          this.category,
          style: TextStyle(
            color: Colors.brown,
            //fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        //margin: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: this.subData!.length,
          itemBuilder: (BuildContext context, int v){
            return ListTile(
              //tileColor: Colors.red,
              leading: Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(this.subData![v].jacket!)
                  )
                ),
              ),
              title: Text(this.subData![v].title!),
              subtitle: Text(this.subData![v].singer!),
              trailing: IconButton(
                icon: Icon( Icons.wysiwyg ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return ThreePage(
                        //mData: this.mData,
                        subData: this.subData![v],
                        category: this.category,
                        // title: this.detailData[v]["title"],
                        // jacket: this.detailData[v]["jacket"],
                        // songText: this.detailData[v]["songText"],
                        // singer: this.detailData[v]["singer"],
                      );
                    })
                  );
                },
              ),
            );
          },
        )
      ),
    );
  }
}
