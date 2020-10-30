import 'package:flutter/material.dart';
import 'activity.dart';

class Activityone extends StatelessWidget {
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

                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Activity(), maintainState: false));
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


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        onPressed: () {

                          // Navigator.pop(context);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Introone(), maintainState: false));
                        },
                        child: Container(

                          child:Stack(
                            children: <Widget>[
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  // step one
                                  Stack(
                                    children: <Widget>[
                                      Container(

                                        child: new Image.asset('Images/draw.jpg',height: 100,),
                                        margin: EdgeInsets.only(
                                            left: 10, top: 10, right: 20, bottom: 10),
                                        height: 200.0,

                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '樹寫南投 走畫鄉里- 林進達速寫展',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動館別: 南投縣文化園區',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動日期: 2020/09/03 ~ 2020/09/29',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動地點: 南投縣藝術家資料館',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('入場方式: 開幕式：9月5日（六）14：00，歡迎自由入場參觀',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('主辦單位: 南投縣政府文化局',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('發布日期: 2020/08/15',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動簡述: ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('  南投縣政府文化局為推廣美術欣賞風氣，促進地方美術創新與發展，特舉辦「藝術家資料館2020駐館藝術家」活動，期望透過駐館藝術家進駐，帶動地方文化藝術氣息。「南投縣藝術家資料館」係以武德殿暨週邊歷史建築再利用為主體之綜合性文化建設，與縣史館、南投陶展示館、圖書文獻室為「南投縣文化園區」，並登錄為歷史建築。\n'
                                              '  本年度駐館藝術家由林進達老師榮膺，以「樹寫南投 走畫鄉里-林進達速寫展」為主軸，駐館計畫有精彩的速寫創作展覽；有療癒的速寫教學體驗課程，以及現場創作示範分享等活動。\n'
                                              '  林進達老師深造於美國密蘇里州FontbonneUniversity美研所，曾任南投縣美術學會第20屆理事長、建國科技大學及南開科技大學兼任助理教授，並擔任南投縣玉山美術獎、台灣國展、全國兒童聯想畫大賽、世界兒童畫展等評審，同時於南投縣政府文化局油畫班授課，且於國內外聯展數十次，個展43次，致力於藝術創作、教育、傳承、推動不遺餘力。\n'
                                              '  速寫已成為進達老師的日常，以取之自然的質樸木筆，濃情淡雅的墨色及繽紛斑斕的水彩，隨手記錄著每一天的片刻心情，收集著生活週遭的美好事物，從仲春的新綠，畫到歲暮的落黃，走畫鄉里，無邊美景配飲同好的歡聲笑語，悠遊在速寫的療癒氛圍中，同時更將代表性的文化景觀及即將凋零消逝的街坊老屋，逐一彩繪為歷史留下見證，為歲月留下美好的印記。\n'
                                              '  展覽時間自109年9月3日起至9月29日止，並於9月5日（週六）14:00舉辦開幕式，9月12、19日(週六)14:00-16:30辦理駐館創作示範分享活動，邀請大家蒞臨欣賞及分享。展出地點：藝術家資料館(南投市彰南路二段61號)，開放時間：週二至週日(9-17時)，週一休館。文化局連絡人：李小姐 049-2231191分機513。',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Raisedbutton

                              // FloatingActionButton
                            ],
                          ),
                        ),
                      ),
                    ),

//                     Container(
//                       margin: EdgeInsets.only(
//                           left: 10, top: 10, right: 10, bottom: 10),
//                       decoration: BoxDecoration(
// //                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
//                         borderRadius: BorderRadius.circular(15),
//
//
//                       ),
//                       child: RaisedButton(
//                         onPressed: () {
//
//                           // Navigator.pop(context);
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //         builder: (context) => Introone(), maintainState: false));
//                         },
//                         color: Color(0xffa4cbcb),
//                         child: Container(
//
//                           child:Stack(
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   // step one
//                                   Expanded(
//                                     child: Stack(
//                                       children: <Widget>[
//                                         Container(
//
//                                           child: new Image.asset('Images/2.jpg',height: 120,),
//                                           margin: EdgeInsets.only(
//                                               left: 10, top: 10, right: 20, bottom: 10),
//                                           height: 100.0,
//
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Stack(
//                                       children: <Widget>[
//                                         Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: <Widget>[
//                                             Text(
//                                               '窯顏惑眾',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
//                                             ),
//                                             Text('－ 林國隆陶藝創作展',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
//                                             ),
//                                             SizedBox(height: 5,),
//                                             Text('時間: 2020/09/03 ~ 2020/09/27',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
//                                             ),
//                                             Text('地點: 虎山藝術館1樓展覽室',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//
//                                 ],
//                               ),
//                               // Raisedbutton
//
//                               // FloatingActionButton
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
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