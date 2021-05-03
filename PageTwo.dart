import 'package:flutter/material.dart';
import 'package:sh_selfstudy_ver0417/PageThree.dart';
//import 'package:sh_selfstudy_ver0417/models/mainDataModel.dart';
import 'package:sh_selfstudy_ver0417/models/subModel.dart';

class PageTwo extends StatelessWidget {

  String title;
  List <SubModel> datas;
  PageTwo({@required this.title, @required this.datas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(this.title),
        centerTitle: true,
      ),
      //centerTitle: true,
      //),
      // body: ListView(
      //   children: [
      //     this._items(context),
      //     this._items(context),
      //     this._items(context),
      //     ListTile(
      //       leading: Icon(Icons.playlist_add_check),
      //       title: Text("타이틀"),
      //       subtitle: Text("내용"),
      //       trailing: Icon(Icons.play_arrow_sharp),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        //itemCount: this.musicData.length,
          itemCount: this.datas.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => new PageThree(
                             sData: this.datas[index],
                            title: this.title[index],
                          )
                      )
                  ),
              leading: Icon(Icons.padding),
              title: Text(this.datas[index].titles),
              subtitle: Text(this.datas[index].singer),
              trailing: Icon(Icons.navigate_next_outlined),
            );
          }
      ),
    );
  }

    Widget _items(BuildContext context) {
      return Container(
        // color: Colors.orange,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 10,
              // color: Colors.red,
              child: Icon(Icons.access_alarm),
            ),
            Container(
              width: ((MediaQuery.of(context).size.width / 10) * 8) - 40.0,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0),
              // color: Colors.yellow,
              child: Column(
                children: [
                  Text(
                    "타이틀",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text("내용..."),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 10,
              // color: Colors.red,
              child: Icon(Icons.navigate_next),
            ),
          ],
        ),
      );
    }
  }
