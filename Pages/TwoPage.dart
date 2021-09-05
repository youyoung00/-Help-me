import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jamesclass_musicapp_self/DataModels/MainDataModel.dart';
import 'package:jamesclass_musicapp_self/DataModels/SubDataModel.dart';
import 'package:jamesclass_musicapp_self/Pages/ThreePage.dart';
import 'package:http/http.dart' as HTTP;

class TwoPage extends StatefulWidget {

  String category;
  List<SubDataModel>? datas;
  int? index;

  TwoPage({required this.category, required this.datas, required this.index});

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {

  MainDataModel? viewData;

  Future<void> subConnect() async{
    HTTP.Response res = await HTTP.get(Uri.parse("http://192.168.219.197:3000/data/${widget.index}"));
   Map<String,dynamic> data = json.decode(res.body);
   this.viewData = MainDataModel.fInit(data);
   print(viewData);
   return;
  }

  @override
  void initState() {
    new Future(() async{
      await this.subConnect();
      if(!mounted) return;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.brown),
        centerTitle: true,
        title: Text(
          this.widget.category,
          style: TextStyle(
            color: Colors.brown,
            //fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: this.viewData == null
          ? Container(child: Center(child: Text("로딩 중..."),),)
          : Container(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: this.viewData!.datas!.length,
            itemBuilder: (BuildContext context, int v){
              return ListTile(
                leading: Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(this.viewData!.datas![v].jacket!)
                  )
                ),
              ),
              //title: Text(this.widget.datas![v].title!),
                title: Text(this.viewData!.datas![v].title!),
              subtitle: Text(this.viewData!.datas![v].singer!),
              trailing: IconButton(
                icon: Icon( Icons.wysiwyg ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return ThreePage(
                        //mData: this.mData,
                        i: v,
                        vData: this.viewData!.datas![v],
                        category: this.viewData!.category,
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
