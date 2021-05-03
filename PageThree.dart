import 'package:flutter/material.dart';
import 'package:sh_selfstudy_ver0417/models/subModel.dart';

class PageThree extends StatelessWidget {
  // int i;
  // PageThree(this.i);
  String title;
  SubModel sData;
  //List<SubModel> datas;
  PageThree ({@required this.sData, @required this.title,});
  // String titles;
  // String singer;
  // String lyrics;
  // String jacket;
  // String title;
   //PageThree({@required this.titles, @required this.singer, @required this.lyrics, @required this.jacket, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(this.title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          this._musicitems(context)
        ],
      ),
    );
  }
  Widget _musicitems(BuildContext context){
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 5.0),
            width: MediaQuery.of(context).size.width,
            child: Text(
              this.sData.titles,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.center,
            ),
            //color: Colors.black26,
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
            width: MediaQuery.of(context).size.width,
            child: Text(
              this.sData.singer,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            //color: Colors.black38,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            child: Image.network(this.sData.jacket,
              // fit: BoxFit.cover
            ),

            //color: Colors.red,
            // Container(),
          ),
          Container(
            //color: Colors.red,
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            child: Text(this.sData.lyrics,
              //textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18.0,),
            ),
            //color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
