import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'HomeMenu.dart';
// import 'package:fluttertry5/introduction_midtai.dart';
// import 'introduction.dart';
// import 'introduction_monster.dart';
// import 'introduction_chickenstory.dart';
// import 'introduction_qinjingsky.dart';
// import 'introduction_rainbowbridge.dart';
// import 'introduction_naturalhistorymuseum.dart';
// import 'introduction_midtai.dart';
// import 'introduction_wangartmuseum.dart';



class Location2 extends StatefulWidget{
  @override
  _Location2State createState() => _Location2State();
}
// 毒蛇資訊(ThirdPage)
class _Location2State extends State<Location2> {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  String name;
  bool  _culture = true; // 文化類
  bool  _ecology = false; // 生態類
  bool  _historic = false; // 古蹟類
  bool  _temple = false; // 廟宇類
  bool  _art = false; // 藝術類
  bool  _snack = false; // 小吃類
  bool  _nationalPark = false; // 國家公園類
  bool  _scenicArea = false; // 國家風景區類
  bool  _agriculture = false; // 休閒農業類
  bool  _hotSpring = false; // 溫泉類
  bool  _nature = false; // 自然風景類
  bool  _relaxation = false; // 休憩類
  bool  _workOut = false; // 運動健身類
  bool  _others = false; // 其他類
  bool color1 = true;
  bool color2 = false;
  bool color3 = false;
  bool color4 = false;
  bool color5 = false;
  bool color6 = false;
  bool color7 = false;
  bool color8 = false;
  bool color9 = false;
  bool color10 = false;
  bool color11 = false;
  bool color12 = false;
  bool color13 = false;
  bool color14 = false;
//  bool _display = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),

          // leading: Padding(
          //   padding: EdgeInsets.only(right: 12),
          //   child: IconButton(
          //
          //     icon: Icon(Icons.arrow_back, color: Colors.white),
          //     onPressed: () => Navigator.of(context).pop(),
          //   ),
          // ),
          actions: <Widget>[
            IconButton(
              // icon: Icon(Icons.settings),
              icon: ImageIcon(AssetImage("Images/homepage.png")),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Mainpage(), maintainState: false));
              },
            ),
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Aboutus(), maintainState: false));
              },
            ),

          ],


        ),

          body:
          ListView(
              children: <Widget>[
                SingleChildScrollView(
                  child:Column(
                      children: <Widget>[

                        Wrap(
                          runSpacing: 10,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: (MediaQuery.of(context).size.width),
                              child:Container(

                                color:Color(0xffd7e3ea),
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 0),
                                child: Text("熱門旅遊景點",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff3d596d)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            // ListView(
                            //         scrollDirection: Axis.horizontal,
                            //     children: <Widget>[
                            //
                            //     ]
                            // ),
                            Container(
                                height: 40,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                 RaisedButton(
                                    color: color1 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                      "文化類",
                                      style: TextStyle(
                                        color: color1 ? Color(0xfff3f3f3) : Color(0xff484848),
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _culture = ! _culture;
                                        color1 = !color1;
                                        color2 = false;
                                        color3 = false;
                                        color4 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "生態類",
                                        style: TextStyle(
                                          color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _culture = false;
                                        _ecology = ! _ecology;
                                        color2 = !color2;
                                        color1 = false;
                                        color3 = false;
                                        color4 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color3 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "古蹟類",
                                        style: TextStyle(
                                          color: color3 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _historic = ! _historic;
                                        color3 = !color3;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),RaisedButton(
                                    color: color4 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "廟宇類",
                                        style: TextStyle(
                                          color: color4 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _temple = ! _temple;
                                        color4 = !color4;
                                        color1 = false;
                                        color2 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color5 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "藝術類",
                                        style: TextStyle(
                                          color: color5 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _art = ! _art;
                                        color5 = !color5;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),RaisedButton(
                                    color: color6 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "小吃類",
                                        style: TextStyle(
                                          color: color6 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _snack = ! _snack;
                                        color6 = !color6;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),RaisedButton(
                                    color: color7 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "國家公園類",
                                        style: TextStyle(
                                          color: color7 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _nationalPark = ! _nationalPark;
                                        color7 = !color7;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color8 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "國家風景區類",
                                        style: TextStyle(
                                          color: color8 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _scenicArea = ! _scenicArea;
                                        color8 = !color8;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color9 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "休閒農業類",
                                        style: TextStyle(
                                          color: color9 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _agriculture = ! _agriculture;
                                        color9 = !color9;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),RaisedButton(
                                    color: color10 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "溫泉類",
                                        style: TextStyle(
                                          color: color10 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _hotSpring = ! _hotSpring;
                                        color10 = !color10;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color11 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "自然風景類",
                                        style: TextStyle(
                                          color: color11 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = false;
                                        _nature = ! _nature;
                                        color11 = !color11;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color12 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "休憩類",
                                        style: TextStyle(
                                          color: color12 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _workOut = false;
                                        _others = false;
                                        _relaxation = ! _relaxation;
                                        color12 = !color12;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                        color11 = false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color13 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "運動健身類",
                                        style: TextStyle(
                                          color: color13 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _others = false;
                                        _workOut = ! _workOut;
                                        color13 = !color13;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                        color11 = false;
                                        color12 =false;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    color: color14 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                                    child: Text(
                                        "其他類",
                                        style: TextStyle(
                                          color: color14 ? Color(0xfff3f3f3) : Color(0xff484848),)
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _culture = false;
                                        _ecology = false;
                                        _historic = false;
                                        _temple = false;
                                        _art = false;
                                        _snack = false;
                                        _nationalPark = false;
                                        _scenicArea = false;
                                        _agriculture = false;
                                        _hotSpring = false;
                                        _nature = false;
                                        _relaxation = false;
                                        _workOut = false;
                                        _others = ! _others;
                                        color14 = !color14;
                                        color1 = false;
                                        color2 = false;
                                        color4 = false;
                                        color3 = false;
                                        color5 = false;
                                        color6 = false;
                                        color7 = false;
                                        color8 = false;
                                        color9 = false;
                                        color10 = false;
                                        color11 = false;
                                        color12 = false;
                                        color14 = false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),

                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '國立暨南國際大學';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=3';
                                    launchURL(url);
                                  },

                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: new Image.asset(
                                                  'Images/school.jpg',height: 120, width: 90, fit: BoxFit.fill),
                                                margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '國立暨南國際大學',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮大學路1號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('06:00~18:00進入校園須登記',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                  child: RaisedButton(
                                    color:Color(0xffd7e3ba),
                                    onPressed: () {
                                      setState(() {
                                        name = '溪頭妖怪村';
                                      });
                                      const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=408';
                                      launchURL(url);
                                    },
                                    child: Container(
                                      // margin: EdgeInsets.only(
                                      //     left: 0, top: 10, right: 0, bottom: 10),
                                      // height: 100,
                                      child: Stack(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  child: new Image.asset(
                                                      'Images/monster.jpg',
                                                      height: 120,
                                                      width: 90,
                                                      fit: BoxFit.fill
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 0, top: 10, right: 20, bottom: 10
                                                  ),
                                                  height: 120.0,
                                                ),
                                              ),
                                              // SizedBox(width: 28,),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      '溪頭妖怪村',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                    ),
                                                    Text('南投縣鹿谷鄉內湖村興產路2-3號',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                    ),
                                                    Text('室外全天候開放\n'
                                                        '商家營業時間：AM10:00～20:00',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ),

                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '雞朝文化故事館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=396';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: new Image.asset(
                                                  'Images/chickenstory.jpg',
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '雞朝文創故事館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮信義路322號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('10：00~18：00　每週日、一休館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '清境高空觀景步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=427';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: new Image.asset(
                                                  'Images/qinjingsky.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '清境高空觀景步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉仁和路186-1號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('開放入園時間：每日8:00至16:30\n'
                                                      '最後購票及入園時間：每日16:30',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '雙龍瀑布七彩吊橋';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=299';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                  'Images/rainbowbridge.jpg',
                                                  // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '雙龍瀑布七彩吊橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣信義鄉光復巷',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週二至週日，上午08:00-下午4:00止\n'
                                                      '(最後進入吊橋時間下午3:30)，每週一公休',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '南投自然史教育館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=426';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: new Image.asset(
                                                  'Images/naturalhistory.jpg',
                                                  // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '南投自然史教育館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉大同村山農巷27號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('周二至周六9:00-12:00 12:30-17:00\n'
                                                      '(國定假日休館)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '王信英美術館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=353';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                  'Images/wangartmuseum.jpg',
                                                  // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '王英信美術館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣草屯鎮雙冬里中正路25號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('上午9:30-12:00 下午14:00-17:00\n'
                                                      '(採取團體10人預約方式，現場備有導覽服務)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '鹿谷農會茶業文化館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=229';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                  'Images/teamuseum.jpg',
                                                  // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '鹿谷鄉農會茶業文化館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣鹿谷鄉中正路一段231號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('平假日皆為 09:00-17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child:Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '瑞龍瀑布';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=379';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/dragonwaterfall.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '瑞龍瀑布',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮坪頂里瑞龍瀑布',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('早上0900至下午1600',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '竹山天梯(梯子吊橋)';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=334';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/ladderbridge.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '竹山天梯(梯子吊橋)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮大鞍里頂林路590號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('重新開放時間將另行發佈',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '中興新村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=444';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/jongxing.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '中興新村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣南投市中興新村光榮北路1號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('中興會館館內無開放\n'
                                                      '其餘地區全年開放',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _temple,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '中台禪寺';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=453';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/midtaitemple.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '中台禪寺',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮一新里中台路2號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('*每日上午8：00至下午5：30\n'
                                                      '*11月、12月、1月、2月開放至下午5：00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '和菓森林';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=87';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/japanesecandy.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '和菓森林',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉新城村香茶巷5號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一到週日9:00-17:30\n'
                                                      '體驗活動最晚進場時間為16:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '名間新街冷泉濕地';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=86';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/coldspring.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '名間新街冷泉濕地',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣名間鄉新街村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭大竹湖步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=83';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/dabamboolake.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭大竹湖步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉大竹湖步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '中寮鄉龍鳳瀑布空中步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=406';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/dragonskywalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '中寮鄉龍鳳瀑布空中步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣中寮鄉瀧林巷28號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('平日 9:00~15:30 假日8:00~15:30 (週二放假)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '龍鳳瀑布';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=81';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/longfengwaterfall.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '龍鳳瀑布',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣中寮鄉瀧林巷28號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '南投野溪溫泉-精英溫泉';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=79';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/wildspring.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '南投野溪溫泉-精英溫泉',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉在台14線95.2公里處',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '永興大樟樹';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=80';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/comphortree.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '永興大樟樹',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('永興村永興活動中心旁',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _others,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '水雲橋';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=78';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/watercloudbridge.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '水雲橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉中山路一段515號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    name = '廣霖菇菇的家養生館';
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=76';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/mushroomhome.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '廣霖菇菇的家養生館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉南港村南港路146號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一到週五 9:00 - 17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '水社大山步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=185';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/bigmountainwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '水社大山步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉水社大山步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭青龍山步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=74';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/qinglongwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭青龍山步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉玄光寺碼頭',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭後尖山步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=73';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/backmountainwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭後尖山步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉頭社佛堂旁',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '烏松崙觀光梅園';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=70';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/tourismmei.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '烏松崙觀光梅園',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣信義鄉自強村烏松崙',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一到週五 9:00 - 17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭水蛙頭步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=69';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/frogwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭水蛙頭步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉日月村水蛙頭步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭水社親水步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=68';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/likewaterwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭水社親水步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉名勝街',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _workOut,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭涵碧步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=67';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/hanbeewalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭涵碧步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉日月潭畔',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '澀水窯(澀水皇茶)';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=67';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/shibumeizu.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '澀水窯(澀水皇茶)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉大雁村大雁巷31-6號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一到週五 9:00 - 17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _historic,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '楠仔腳蔓社學堂遺蹟';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=54';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/manshehistoric.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '楠仔腳蔓社學堂遺蹟',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('信義鄉望美村部落內',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _historic,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '竹山連興宮';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=53';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/lienxingtemple.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '竹山連興宮',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮下橫街28號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '雲龍瀑布';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=4';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/clouddragonwaterfall.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '雲龍瀑布',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣信義鄉八通關古道東埔登山口',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '坑內坑森林步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=51';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/insideforestwalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '坑內坑森林步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣名間鄉豐柏路旁的木棧平臺',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '武嶺';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=32';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/wulin.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '武嶺',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉武嶺',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '鳶峰';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=27';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/yunfeng.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '鳶峰',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉台14甲線24.3公里處',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '碧湖（萬大水庫）';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=26';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/wandareservoir.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '碧湖（萬大水庫）',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉親愛村萬大水庫',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _hotSpring,
                              child:Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '埔里溫泉';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=41';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/pulihotspring.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '埔里溫泉',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮鯉魚路37-1號及中山路一段151號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '永興水火同源';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=39';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/waterwithfire.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '永興水火同源',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉永興村投58號鄉道3.5K處',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _hotSpring,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '國姓北港溪溫泉';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=37';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/guoxinghotspring.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '國姓北港溪溫泉',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉北港村北原路',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '錦吉昆蟲館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=33';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/bugmuseum.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '錦吉昆蟲館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('埔里鎮中山路一段21號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('AM08：00~PM06：00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '楓樺台一渡假村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=31';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/taionevilla.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '楓樺台一渡假村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮蜈蚣里中山路一段176號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('平日08:00~16:30 假日08:00~17:30',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _temple,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '武昌宮';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=22';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/wuchangtemple.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '武昌宮',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣集集鎮八張里八張街181號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '奕青酒莊';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=23';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/yichinwine.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '奕青酒莊',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉上安村安村巷101之9 號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('9：00～17：00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '楓香巨木群公園';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=20';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/fengxiangpark.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '楓香巨木群公園',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮蜈蚣里的蜈蚣社區內',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _others,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '橋聳雲天(國道六號國姓交流道)';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=19';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/bridgeonthesky.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '橋聳雲天(國道六號國姓交流道)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('橋聳雲天',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _others,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '藏傘閣文化休閒園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=16';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/hideumbrella.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '藏傘閣文化休閒園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮工業區延平路10號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('08:30-16:30',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '客家打石文化園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=429';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/hitrock.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '客家打石文化園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉北港村13鄰',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '林圮墓';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=14';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/lingrave.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '林圮墓',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮林圮街，育英路33號旁',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _others,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '前山第一城石碣';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=12';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/frontfirstrock.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '前山第一城石碣',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮前山路一段278號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _others,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '香里活力豬品牌文化館';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=440';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/energypig.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '香里活力豬品牌文化館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投市南崗工業區仁和路3號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一至週日09:00~17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '青竹竹文化園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=211';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/bambooculture.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '青竹竹文化園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮富州巷31號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('開放時間：上午09：00至下午17：00\n'
                                                      '公休日：每周二、周三；例假日除外',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _ecology,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '桃米生態村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=291';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/taomivilla.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '桃米生態村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮桃米里桃米巷37號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '集集綠色隧道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=282';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/greenhole.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '集集綠色隧道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣集集鎮台16甲線綠色隧道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '集集火車站';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=283';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/jijitrainstation.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '集集火車站',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣集集鎮民生路75號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _scenicArea,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '日月潭';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=304';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/sunmoonlake.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '日月潭',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉中山路599號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '糯米橋';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=448';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/ricebridge.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '糯米橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉糯米橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _ecology,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '紙教堂 新故鄉見學園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=452';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/paperchurch.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '紙教堂 新故鄉見學園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮桃米巷52-12號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一至週五 09:30～18:00'
                                                      '週六、週日、國定假日、寒暑假 09:30～20:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '九族文化村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=312';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/nine.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '九族文化村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣魚池鄉大林村金天巷45號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('開園時間：09:00～17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '坪瀨琉璃光之橋健行園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=395';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/glassbridge.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '坪瀨琉璃光之橋健行園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('信義鄉明德村玉山路47號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('每周一至周五上午9:00-下午16:00'
                                                      '星期六日及例假日:上午8:00-下午17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '草坪頭玉山茶園';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=320';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/yushantea.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '草坪頭玉山茶園',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣信義鄉同富村太平巷113-1號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '信義鄉農會梅子夢工廠';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=224';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/meizidream.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '信義鄉農會梅子夢工廠',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣信義鄉明德村新開巷11號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一~週日： 8:00 AM ~ 5:00 PM',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '車埕車站';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=319';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/chechentrain.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '車埕車站',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉車埕車站',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('08:00~18:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '水里鵲橋';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=97';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/shulibridge.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '水里鵲橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉上安村水里鵲橋',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '忘憂森林';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=383';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/forgetworry.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '忘憂森林',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮溪山路3-3號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('全日開放，夜間不宜前往',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '林圮埔老街';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=377';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/linoldstreet.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '林圮埔老街',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣竹山鎮集山路三段1220號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '杉林溪森林生態渡假園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=285';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/shanlinxi.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '杉林溪森林生態渡假園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('竹山鎮大鞍里溪山路杉林溪森林遊樂區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('平日 07：30 - 16：20'
                                                      '假日 07:30 - 17:40',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '合歡山國家森林遊樂區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=451';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/hehuanshan.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '合歡山國家森林遊樂區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉仁和路合歡山主峰登山口',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('星期一~星期五 上午8:00~12:00'
                                                      '下午13:00~17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _scenicArea,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '奧萬大國家森林遊樂區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=254';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/auowuanda.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '奧萬大國家森林遊樂區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉親愛村大安路153號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('上午8:00～下午17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '梅峰–台大山地農場';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=309';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/meifeng.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '梅峰–台大山地農場',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉仁和路215號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('早上8:00至下午5:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '清境農場';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=253';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/qinjingfarm.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '清境農場',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉大同村仁和路170號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('08：00 am 至 17：00 pm',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '莫那魯道紀念公園';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=449';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/monaludao.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '莫那魯道紀念公園',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉仁和路4號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '惠蓀林場';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=302';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/hueshunforest.png',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '惠蓀林場',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣仁愛鄉新生村山林巷1號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('08：00~17：00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _hotSpring,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '泰雅渡假村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=313';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/taiyavacation.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '泰雅渡假村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉北港村北原路56-2號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('9:00~17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '九份二山地震紀念園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=342';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/twomountain.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '九份二山地震紀念園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉南港村長石巷',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _agriculture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '福龜草莓園';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=187';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/turtlestrawberry.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '福龜草莓園',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣國姓鄉中正路一段',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週一至週五8；00-17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _temple,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '松柏嶺受天宮';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=446';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/skytemple.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '松柏嶺受天宮',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣名間鄉松山村松山街118號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('無限制',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '南投國際沙雕藝術文化園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=445';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/sandart.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '南投國際沙雕藝術文化園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投市華陽路1012號旁',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週二至週日09:00～17:00'
                                                      '休園日：每週一',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '寶島時代村';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=371';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(
                                                  'Images/baodaovillage.jpg',
                                                  // color: Color(0xff3d596d),
                                                  height: 120,
                                                  width: 90,
                                                  fit: BoxFit.fill
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 10, right: 20, bottom: 10
                                              ),
                                              height: 120.0,
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '寶島時代村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣草屯鎮中正路1039號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('上午09:30 ~ 下午18:00'
                                                      '除了2、7、8月以外，其餘月份固定星期二休村',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '國立臺灣工藝研究發展中心';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=361';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/workresearch.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '國立臺灣工藝研究發展中心',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣草屯鎮中正路573號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週二～週日及國定假日09:00－17:00'
                                                      '平日週一休館，如逢國定假日則開館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _relaxation,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '草屯九九峰健行步道';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=359';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/nineninewalk.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '草屯九九峰健行步道',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣草屯鎮平林里健行路',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('08:00~17:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _art,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '九九峰生態藝術園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=360';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/ninenineart.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '九九峰生態藝術園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣草屯鎮平林里健行路152號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('週二至週日每日9:00-17:00'
                                                      '每週一、除夕、春節初一休館',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _historic,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '藍田書院';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=198';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child:Container(
                                                child: Image.asset(
                                                    'Images/bluefield.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),

                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '藍田書院',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投市崇文里文昌街140號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('06:00~21:00',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '果寶歡酵觀光工廠 GuoBAO';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=443';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/guobao.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '果寶歡酵觀光工廠 GuoBAO',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣埔里鎮珠格里下湳巷15號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('上午9:00-下午5:00(週二公休)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 10,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _culture,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                // height: 100,
                                // width: 420,
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {
                                    setState(() {
                                      name = '水里蛇窯陶藝文化園區';
                                    });
                                    const url = 'http://travel.nantou.gov.tw/detail.aspx?type=scenic&id=159';
                                    launchURL(url);
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(
                                    //     left: 0, top: 10, right: 0, bottom: 10),
                                    // // color: Colors.red,
                                    // height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                child: Image.asset(
                                                    'Images/snakehole.jpg',
                                                    // color: Color(0xff3d596d),
                                                    height: 120,
                                                    width: 90,
                                                    fit: BoxFit.fill
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 0, top: 10, right: 20, bottom: 10
                                                ),
                                                height: 120.0,
                                              ),
                                            ),
                                            // SizedBox(width: 28,),
                                            Expanded(
                                              child:Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '水里蛇窯陶藝文化園區',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('南投縣水里鄉頂崁村水信路一段512巷21號',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                                  ),
                                                  Text('8:00am-5:30pm(週三公休)',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(fontSize: 13,color: Color(0xff1e1e24)),
                                                  )
                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        )
                      ]
                  ),
                ),
              ]
          ),
        drawer: Drawer(
          child: HomeMenu(),
        ),
        /**drawer: Drawer(
          child: HomeMenu(),
        ),**/
      ),
    );
  }
}


//
// void main() {
//   runApp(Location());
// }