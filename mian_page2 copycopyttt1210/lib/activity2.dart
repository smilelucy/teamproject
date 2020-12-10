import 'package:flutter/material.dart';
import 'activity.dart';
// import 'package:linkable/linkable.dart';
// import 'hyperlink.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
// import 'package:url_launcher/url_launcher.dart';
class Activitytwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

                                        child: new Image.asset('Images/tiger.jpg',height: 100,),
                                        margin: EdgeInsets.only(
                                            left: 10, top: 0, right: 20, bottom: 0),
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
                                            '集集定向越野 - 石虎同樂會',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 20,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動地點: 集集鎮特有生物研究保育中心',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('活動日期: 2020/10/17 ~ 2020/10/18',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('報名期限: 9/22(二)23:59(額滿即截止)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          // SizedBox(height: 5,),
                                          // Text('入場方式: 開幕式：9月5日（六）14：00，歡迎自由入場參觀',
                                          //   textAlign: TextAlign.left,
                                          //   style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          // ),
                                          // SizedBox(height: 5,),
                                          // Text('主辦單位: 南投縣政府文化局',
                                          //   textAlign: TextAlign.left,
                                          //   style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          // ),
                                          // SizedBox(height: 5,),
                                          // Text('發布日期: 2020/08/15',
                                          //   textAlign: TextAlign.left,
                                          //   style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          // ),
                                          SizedBox(height: 5,),
                                          Text('活動簡述: ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('- About Us\n'
                                              '  集集鎮與特有生物研究保育中心長期致力於推動石虎保育，促進人與石虎和諧共存，近年也結合旅遊與保育的概念，今年希望能透過結合「定向越野」吸引遊客來到集集尋找石虎，帶入地方觀光，同時並宣導石虎保育觀念。',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('- 定向越野Ｘ尋找石虎\n'
                                              ' 定向越野是一個參加者拿著定向專用地圖，根據地圖上提示及特徵找到所有檢查點，完成指定任務(打卡)，最快完成賽程者便獲勝的運動，同時考驗參加者的體力和智力！',
                                            textAlign: TextAlign.left,

                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          SizedBox(height: 10,),
                                          // Linkable(
                                          //   text: '活動網址: \n'
                                          //       ' https://jijisport2020.wixsite.com/mysite',
                                          // ),
                                          Text('活動網址: \n'
                                              ' https://jijisport2020.wixsite.com/mysite',
                                            textAlign: TextAlign.left,

                                            style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
                                          ),
                                          // Hyperlink('https://jijisport2020.wixsite.com/mysite', 'Awesome website!'),

                                          // InkWell(
                                          //     child: Text("This is a text link"),
                                          //     onTap: () async {
                                          //       if (await canLaunch("https://jijisport2020.wixsite.com/mysite")) {
                                          //         await launch("https://jijisport2020.wixsite.com/mysite");
                                          //       }
                                          //     }
                                          // ),
                                          // Linkify(
                                          //   onOpen: (link) => print("Clicked ${link.url}!"),
                                          //   text: "https://jijisport2020.wixsite.com/mysite",
                                          // ),
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