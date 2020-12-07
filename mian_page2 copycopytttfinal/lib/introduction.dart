import 'package:flutter/material.dart';
import 'location.dart';
class Introone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),

          leading: Padding(
            padding: EdgeInsets.only(left: 12),
            child: IconButton(

              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {

                // Navigator.of(context).pushNamed("First");
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Location(), maintainState: false));
              },
            ),
          ),
        ),
        body:
        Container(
          // color: Color(0xfff7f045),
          child: ListView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffa4cbcb),

                      ),
                      child:Stack(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                      child: new Image.asset('Images/school.jpg',height: 100,),
                                      margin: EdgeInsets.only(
                                          left: 10, top: 10, right: 20, bottom: 10),
                                      height: 100.0,

                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: <Widget>[
                                    Column(
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
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          // Raisedbutton

                          // FloatingActionButton
                        ],
                      ),


                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xfff1e9da),

                      ),
                      child:Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 20, bottom: 10),
                        child: Row(
                          children: <Widget>[
                            // step one
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '開放時間: 06:00-18:00\n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text(
                                        '收費方式: 進入校園須登記繳費\n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('連絡電話: 886-49-2910960\n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('地址: 南投縣埔里鎮大學路1號\n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('景點詳述: \n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('  「暨南」二字，取自《尚書．禹貢篇》「朔南暨，聲教訖于四海」一語，意指將中華文化向南朝海外傳播，將教化遍及世界。清末的「暨南學堂」及民國以後設在上海的「暨南大學」，均以培育僑界人才為特色。本校沿用「暨南」之名，以期傳承此一使命，致力培育海內外優秀人才，並為促進國家社會未來的發展，培養具有國際觀的高級人才，故冠以「國際」二字，期望學子們能立足台灣，心懷世界，邁向國際。',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('  暨大賞櫻茶道交流活動，是本校歷年舉辦的社區交流活動，栽種已逾10年的單瓣臺灣山櫻、及重瓣的日本八重櫻樹共計有1千餘株，卓然成林，在冬日瀟瑟景緻中構築成一堵淡雅繽紛的美麗樹牆。慕名賞櫻的民眾、大埔里地區社區及藝文人士、教職員生及家屬等，在現場氣氛浪漫，祥和寧謐，映襯著花下的儷影，聆賞應景音樂表演、煮茗論道及品嚐櫻花點心，讓人留連忘返。\n',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('景點網站:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                      Text('http://www.ncnu.edu.tw/ncnuweb/',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18,color: Color(0xff333333)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),


                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}