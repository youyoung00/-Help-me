import 'package:flutter/material.dart';
//import 'package:sh_selfstudy_ver0417/PageTwo.dart';
import 'package:sh_selfstudy_ver0417/models/mainDataModel.dart';
import 'package:sh_selfstudy_ver0417/models/subModel.dart';
import 'PageTwo.dart';


void main(){
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}



class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Map<String,dynamic>> sData = [
    // 장르1 - 장르이름, 장르의 노래'들'
    // -- 노래제목, 가수이름, 가사, 앨범자켓
    // 장르2 - 장르이름, 장르의 노래'들'
    {
      "title" : "댄스",
       "datas" : [
         {
         "titles" : "Fake Love",
         "singer":"방탄소년단",
         "lyrics":"""널 위해서라면 난
슬퍼도 기쁜 척 할 수가 있었어
널 위해서라면 난
아파도 강한 척 할 수가 있었어
사랑이 사랑만으로 완벽하길
내 모든 약점들은 다 숨겨지길
이뤄지지 않는 꿈속에서
피울 수 없는 꽃을 키웠어
I'm so sick of this
Fake Love Fake Love Fake Love
I'm so sorry but it's
Fake Love Fake Love Fake Love
I wanna be a good man just for you
세상을 줬네 just for you
전부 바꿨어 just for you
Now I dunno me, who are you?
우리만의 숲 너는 없었어
내가 왔던 route 잊어버렸어
나도 내가 누구였는지도 잘 모르게 됐어
거울에다 지껄여봐 너는 대체 누구니
널 위해서라면 난
슬퍼도 기쁜 척 할 수가 있었어
널 위해서라면 난
아파도 강한 척 할 수가 있었어
사랑이 사랑만으로 완벽하길
내 모든 약점들은 다 숨겨지길
이뤄지지 않는 꿈속에서
피울 수 없는 꽃을 키웠어
Love you so bad Love you so bad
널 위해 예쁜 거짓을 빚어내
Love it’s so mad Love it’s so mad
날 지워 너의 인형이 되려 해
Love you so bad Love you so bad
널 위해 예쁜 거짓을 빚어내
Love it’s so mad Love it’s so mad
날 지워 너의 인형이 되려 해
I'm so sick of this
Fake Love Fake Love Fake Love
I'm so sorry but it's
Fake Love Fake Love Fake Love
Why you sad? I don't know 난 몰라
웃어봐 사랑해 말해봐
나를 봐 나조차도 버린 나
너조차 이해할 수 없는 나
낯설다 하네 니가 좋아하던 나로 변한 내가
아니라 하네 예전에 니가 잘 알고 있던 내가
아니긴 뭐가 아냐 난 눈 멀었어
사랑은 뭐가 사랑 It's all fake love
(Woo) I dunno I dunno I dunno why
(Woo) 나도 날 나도 날 모르겠어
(Woo) I just know I just know I just know why
Cuz it’s all Fake Love Fake Love Fake Love
Love you so bad Love you so bad
널 위해 예쁜 거짓을 빚어내
Love it’s so mad Love it’s so mad
날 지워 너의 인형이 되려 해
Love you so bad Love you so bad
널 위해 예쁜 거짓을 빚어내
Love it’s so mad Love it’s so mad
날 지워 너의 인형이 되려 해
I'm so sick of this
Fake Love Fake Love Fake Love
I'm so sorry but it's
Fake Love Fake Love Fake Love
널 위해서라면 난
슬퍼도 기쁜 척 할 수가 있었어
널 위해서라면 난
아파도 강한 척 할 수가 있었어
사랑이 사랑만으로 완벽하길
내 모든 약점들은 다 숨겨지길
이뤄지지 않는 꿈속에서
피울 수 없는 꽃을 키웠어""",
         "jacket": "https://images.unsplash.com/photo-1519640350407-953bc0614f4c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fG11c2ljfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
         },
         { "titles" : "롤린(Rollin')",
           "singer" : "브레이브걸스(Brave girls)",
         "lyrics" : """그 날을 잊지 못해 babe
날 보며 환히 웃던 너의 미소에
홀린 듯 I'm fall in love
But 너무 쪽팔림에 (난 그저)
한마디 말도 못해 babe
I wanna you 너의 눈빛은
날 자꾸 네 곁을 맴돌게 해
Just only you 굳게 닫힌 내 맘이
어느새 무너져버려 Because of you
온통 너의 생각뿐이야 나도 미치겠어
너무 보고 싶어 매일 매일 매일
자꾸 초라해지잖아 내 모습이
그대여 내게 말해줘 사랑한다고
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
하루가 멀다 하고 Rolling in the deep
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
기다리고 있잖아 Babe Just only you
기다리고 있잖아 Babe Just only you
Hey I just wanna be with you
오늘 밤이 가기 전에
I can't feel you 조금 더 다가와 줘
Tonight I'm ready for you
You wanna touch me I know
대체 뭘 고민해 빨리 안아
아닌 척 모르는 척 하다가
늦게 놓치고 후회 말아
I wanna you 너의 눈빛은
날 자꾸 네 곁을 맴돌게 해
Just only you 굳게 닫힌 내 맘이
어느새 무너져버려 Because of you
온통 너의 생각뿐이야 나도 미치겠어
너무 보고 싶어 매일 매일 매일
자꾸 초라해지잖아 내 모습이
그대여 내게 말해줘 사랑한다고
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
하루가 멀다 하고 Rolling in the deep
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
기다리고 있잖아 Babe Just only you
(Bridge)
이제 와 숨기려 하지 마요
그대여 아닌 척하지 마요
온종일 난 그대 생각에 잠긴 채로
난 이대로 기다리고 있어요
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
하루가 멀다 하고 Rolling in the deep
Rollin' Rollin' Rollin' Rollin'
Rollin' Rollin' Rollin' Rollin'
기다리고 있잖아 Babe Just only you
기다리고 있잖아 Babe Just only you""",
         "jacket" : "https://images.unsplash.com/photo-1588469389915-f9da15a586f5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a3BvcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
         }
       ],
    },

    {
      "title": "발라드",
      "datas": [
        {
          "titles": "라일락",
          "singer": "아이유",
          "lyrics": """나리는 꽃가루에 눈이 따끔해 (아야)
눈물이 고여도 꾹 참을래
내 마음 한켠 비밀스런 오르골에 넣어두고서
영원히 되감을 순간이니까 
우리 둘의 마지막 페이지를 잘 부탁해
어느 작별이 이보다 완벽할까
Love me only till this spring
오 라일락 꽃이 지는 날 good bye
이런 결말이 어울려 
안녕 꽃잎 같은 안녕
하이얀 우리 봄날의 climax
아 얼마나 기쁜 일이야
Ooh ooh 
Love me only till this spring
봄바람처럼
Ooh ooh 
Love me only till this spring
봄바람처럼
기분이 달아 콧노래 부르네 (랄라)
입꼬리는 살짝 올린 채
어쩜 이렇게 하늘은 더 바람은 또 완벽한 건지
오늘따라 내 모습 맘에 들어
처음 만난 그날처럼 예쁘다고 말해줄래
어느 이별이 이토록 달콤할까
Love resembles misty dream
오 라일락 꽃이 지는 날 good bye
이런 결말이 어울려
안녕 꽃잎 같은 안녕
하이얀 우리 봄날의 climax
아 얼마나 기쁜 일이야
Ooh ooh 
Love resembles misty dream
뜬구름처럼
Ooh ooh 
Love resembles misty dream
뜬구름처럼
너도 언젠가 날 잊게 될까
지금 표정과 오늘의 향기도
단잠 사이에 스쳐간
봄날의 꿈처럼
오 라일락 꽃이 지는 날 good bye
너의 대답이 날 울려
안녕 약속 같은 안녕
하이얀 우리 봄날에 climax
아 얼마나 기쁜 일이야
Ooh ooh 
Love me only untill this spring
봄바람처럼
Ooh ooh 
Love me only untill this spring
봄바람처럼
Ooh ooh 
Love resembles misty dream
뜬구름처럼
Ooh ooh 
Love resembles misty dream
뜬구름처럼""",
          "jacket": """https://images.unsplash.com/photo-1619922141822-8972ce55b44b?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"""
        },
        {
          "titles": "그 흔한 남자여서",
          "singer": "박효신",
          "lyrics": """사는 게 힘들어 
그런 내게 쉽게 하는 말 
시간이 너를 지워버리면 
모두 잊혀진다고 

술한잔 기울여 
나를 위로하려 하는 말 
웃으며 모두 고맙다 하며 
끄덕 거리며 이별의 건배했지만 

너를 만져본 적이 있겠니 
너와 말해 본 적 있겠니 
너를 사랑하고 하는 얘기겠니 
모른다고 모른다고 
눈물이 뿌옇게 잔이 흐르도록 고여서 
슬퍼도 그 흔한 남자여서 
난 울 수가 없었어 

취한 날 보내며 
인사 하듯 쉽게 하는 말 
힘을 내 다시 시작인거야 
더 좋을 거야 
다른 사랑하라지만 
""",
          "jacket":"""https://images.unsplash.com/photo-1620041354644-888bffe72076?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"""
        }
      ]
    }

  ];

  List<MainDataModel> vData;

  @override
  void initState() {
    setState(() {
      // * 가장 쉬운 모델링. --> rm
      vData = this.sData.map<MainDataModel>((Map<String,dynamic> e){
        return new MainDataModel(
            title: e["title"].toString(),
            datas: List.from(e["datas"]).map<SubModel>(
                (v) => new SubModel(
                  title: v["title"].toString(),
                  titles: v["titles"].toString(),
                  lyrics: v["lyrics"].toString(),
                  jacket: v["jacket"].toString(),
                  singer: v["singer"].toString()
                )
            ).toList()
        );
      }).toList();
    });

    // [new MainDataMOdel()]
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("My Music"),
        centerTitle: true,
        actions: [
          IconButton(
          icon: Icon(Icons.settings),
            onPressed:(){
            return;
            },
          )
        ],
      ),
      body: this.vData == null
          ? Center(child: Text("로딩 중...."),)
          : new GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        // children: [
        //   this._items(context: context),
        //   this._items(context: context),
        //   this._items(context: context),
        //   Container(color: Colors.indigo,),
        //   Container(color: Colors.green,),
        // ],
        // 리스트의 요소와 map함수 활용 예시: children: [1,2,3,4,5].map<Widget>((int e) => this._items(e),).toList(),
        // itemCount: this.sData.length,
        itemCount: this.vData.length,
        itemBuilder: (BuildContext context, int i){ // 0,1,2,3,4 -> List요소의 특징과 같
          //return Container();
          return this._items(i, context);
        },
      ),
    );
  }

  List<int> data = [1,2,3,4,5,6];

  Widget _items(int i, BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context){
            // return Scaffold(
            //   appBar: AppBar(),
            //);
                return new PageTwo(
                    // title: this.sData[i]['title'].toString(),
                    // datas: List.from(this.sData[i]['datas'])
                  title: this.vData[i].title,
                  datas: this.vData[i].datas,
                );
            }
          )
        );
        return;
      },
      child: new Container(
          color: Colors.black26,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amberAccent,
                child: Icon(Icons.more_horiz),
                //width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10.0),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1604426633861-11b2faead63c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60.0)
                ),
              ),
              Container(
                child: Text(
                 // this.sData[i]["title"].toString(),
                  this.vData[i].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.play_arrow_sharp),
                    Icon(Icons.playlist_add_check)
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
