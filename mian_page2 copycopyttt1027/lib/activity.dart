import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'activity1.dart';
import 'activity2.dart';
import 'mainpage.dart';
import 'aboutus.dart';
// import 'package:link_text/link_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'HomeMenu.dart';

class Activity extends StatelessWidget {
  // String _launchUrl = "https://www.youtube.com/watch?v=WYwxSx8NZsc";

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),

          // leading: Padding(
          //   padding: EdgeInsets.only(left: 12),
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
        Container(
          // color: Color(0xfff7f045),
          child: ListView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
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
//                         color: Color(0xffa4cbcb),
//                         // onPressed: _launchURL,
//                         onPressed: () {
//
//                           Navigator.pop(context);
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Activityone(), maintainState: false));
//                         },
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
//                                           child: new Image.asset('Images/one.jpg',height: 120,),
//                                           margin: EdgeInsets.only(
//                                               left: 10, top: 10, right: 20, bottom: 10),
//                                           height: 120.0,
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
//                                               '中華弘道書會庚子聯展',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
//                                             ),
//                                             SizedBox(height: 5,),
//                                             Text('時間: 2020/10/31 ~ 2020/11/11',
//                                               textAlign: TextAlign.left,
//                                               style: TextStyle(fontSize: 16,color: Color(0xff1e1e24)),
//                                             ),
//                                             Text('地點: 文化局日月展覽室',
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

                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15303';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/small_logo.png',height: 120,width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15303
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '中華弘道書會庚子聯展',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/10/31 ~ 2020/11/11',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 文化局日月展覽室',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15304';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/one.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 0, right: 20, bottom: 0),
                                          height: 120.0,


                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15304
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '兩個老同學',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            Text('－ 柳岳森、張瑜玹聯展',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/10/31 ~ 2020/11/11',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 文化局九九展覽室',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15305';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/two.jpg',height: 120, width: 150,fit: BoxFit.fill,),

                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15305
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '顯微竹藝術 － 李弘偉博士竹纖維創作展',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text('',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/10/31 ~ 2020/11/29',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 竹藝博物館',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15279';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/three.jpg',height: 120, width: 150,fit: BoxFit.fill,),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15279
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '2020數人室內樂：名曲有道理 - 弦樂四重奏系列',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text('',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/01 ~ 2020/11/01',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣政府文化局演藝廳',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.sunmoonlake.gov.tw/activities/musicfestival/';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/eight.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.sunmoonlake.gov.tw/activities/musicfestival/
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '日月潭花火音樂嘉年華',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              ' - 星夜饗宴花火音樂會',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/7',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 伊達邵碼頭',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.sunmoonlake.gov.tw/activities/musicfestival/';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/eight.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.sunmoonlake.gov.tw/activities/musicfestival/
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '日月潭花火音樂嘉年華',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              ' - 日月潭紅茶文化季',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/07 ~ 2020/11/08',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 向山遊客中心',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15482';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/four.jpg',height: 120, width: 150,fit: BoxFit.fill,),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15482
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('電影放映 - ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            Text(
                                              '威利的異星大冒險',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text('',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/07',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣政府文化局圖書館7樓電影放映廳',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.sunmoonlake.gov.tw/activities/musicfestival/';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/eight.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.sunmoonlake.gov.tw/activities/musicfestival/
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'NTSO臺灣管樂團花火音樂會',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            // SizedBox(height: 5,),
                                            // Text(
                                            //   ' - 日月潭紅茶文化季',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            // ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/14',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 向山遊客中心',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
//                                  border: Border.all(width: 2, color: Color(0xff663f29)), // 邊框
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.sunmoonlake.gov.tw/activities/musicfestival/';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/eight.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.sunmoonlake.gov.tw/activities/musicfestival/
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '鼓火交鋒映明潭',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            ),
                                            // SizedBox(height: 5,),
                                            // Text(
                                            //   ' - 日月潭紅茶文化季',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 17,color: Color(0xff1e1e24)),
                                            // ),
                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/21',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 伊達邵碼頭',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15483';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/five.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15483
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('電影放映 - ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            Text(
                                              '阿嬤的小公主',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/21',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣政府文化局圖書館7樓電影放映廳',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15484';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/six.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15484
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('電影放映 - ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            Text(
                                              '藍色比爾街的沉默',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/11/28',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣政府文化局圖書館7樓電影放映廳',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15282';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // step one
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(

                                          child: new Image.asset('Images/seven.gif',height: 120, width: 150,fit: BoxFit.fill),
                                          margin: EdgeInsets.only(
                                              left: 0, top: 10, right: 20, bottom: 10),
                                          height: 120.0,

                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          // https://www.nthcc.gov.tw/A4_1/content/15282
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('極至體能舞蹈團2020【老化一劇：Old is New】',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            Text(
                                              '- 首演～2020臺中市藝文振興套票',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/12/12',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣政府文化局演藝廳',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                            ),
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: HomeMenu(),
        ),
      ),
    );
  }
}