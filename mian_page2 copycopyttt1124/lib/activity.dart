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

                    Container(
                      margin: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xffa4cbcb),
                        // onPressed: _launchURL,
                        onPressed: () {
                          const url = 'https://www.nthcc.gov.tw/A4_1/content/15684';
                          launchURL(url);
                        },
                        child: Container(
                          color: Color(0xffa4cbcb),
                          child:Row(
                            children: <Widget>[
                              // step one
                              Expanded(
                                child: Container(

                                  child: new Image.asset('Images/up.jpg',height: 120, width: 150,fit: BoxFit.fill),
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
                                    Text('電影放映 - 寄生上流',
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
                                    Text('時間: 2020/11/26',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 14,color: Color(0xffba181b)),
                                    ),
                                    Text('地點: 南投縣政府文化局圖書館7樓電影放映廳',
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