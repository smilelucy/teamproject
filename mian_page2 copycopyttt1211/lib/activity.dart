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
      debugShowCheckedModeBanner: false,
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

                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15768';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/07.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('南投藍田書院109年文史班成果展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/04 ~ 2020/12/29',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 南投縣藝術家資料館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15769';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/08.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('走近異境－林善述個展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/04 ~ 2020/12/27，週一休館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 中興新村虎山藝術館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15770';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/09.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('路過/跡調－嚴玟鑠個展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/04 ~ 2020/12/27，週一休館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 中興新村虎山藝術館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.youtube.com/embed/rHY3YKq6ERk';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/puli.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('埔里秋季花卉展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/05 ~ 2020/12/20',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 埔里花卉暨多功能農特產中心',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15771';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/10.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('風景敘事－胡淑慧創作個展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/04 ~ 2020/12/27，週一休館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 中興新村虎山藝術館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15781';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/12.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('2020竹藝產品開發競賽得獎作品展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/12 ~ 2021/03/31，週一休館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 竹藝博物館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15773';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/11.jpg',height: 120, width: 150,fit: BoxFit.fill),
                                  margin: EdgeInsets.only(
                                      left: 0, top: 10, right: 20, bottom: 10),
                                  height: 120.0,

                                ),
                              ),
                              Expanded(
                                child: Column(
                                  // https://www.nthcc.gov.tw/A4_1/content/15483
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('2020南投縣玉山美術獎得獎作品展',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    ),
                                    // Text(
                                    //   '',
                                    //   textAlign: TextAlign.left,
                                    //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                    // ),
                                    //
                                    SizedBox(height: 5,),
                                    Text('時間: 2020/12/12 ~ 2021/01/12，週一休館',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 南投縣政府文化局日月、九九、玉山展覽室及文物陳列室',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 16,color: Color(0xff606c38)),
                                    ),
                                  ],
                                ),
                              ),

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
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15683';
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

                                          child: new Image.asset('Images/movie.png',height: 120, width: 150,fit: BoxFit.fill),
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
                                            Text('電影放映 - 杜立德',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text(
                                            //   '',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/12/19',
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
                          const url = 'https://www.facebook.com/NantouNewYear/';
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

                                          child: new Image.asset('Images/year.jpg',height: 120, width: 150,fit: BoxFit.fill),
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
                                            Text('2021愛在南投星光閃耀 跨年晚會',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text(
                                            //   '',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/12/31',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣立體育館',
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
                          const url = 'https://bao-ming.com/eb/www/activity_content.php?activitysn=4399';
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

                                          child: new Image.asset('Images/sunmoon.jpg',height: 120, width: 150,fit: BoxFit.fill),
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
                                            Text('MERRELL 2021日月潭櫻舞飛揚環湖路跑賽',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text(
                                            //   '',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/01/24',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 日月潭向山遊客中心',
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
                          const url = 'https://www.ibodygo.com.tw/EventTopic.aspx?n=1103';
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

                                          child: new Image.asset('Images/tea.jpg',height: 120, width: 150,fit: BoxFit.fill),
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
                                            Text('第15屆大腳丫森林-八卦茶園馬拉松',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text(
                                            //   '',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/01/31',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 南投縣竹山鎮竹山國中(南投縣竹山鎮竹山路 217 號)',
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
                          const url = 'https://www.facebook.com/2020Zhushanmouse/';
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

                                          child: new Image.asset('Images/light.jpg',height: 120, width: 150,fit: BoxFit.fill),
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
                                            Text('2021南投竹山.牛舞花竹藝燈會晚會及閉幕晚會',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            ),
                                            // Text(
                                            //   '',
                                            //   textAlign: TextAlign.left,
                                            //   style: TextStyle(fontSize: 18,color: Color(0xff1e1e24)),
                                            // ),

                                            SizedBox(height: 5,),
                                            Text('時間: 2020/02/28',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                            ),
                                            Text('地點: 竹山菸葉館(竹山鎮祖師街32號)',
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