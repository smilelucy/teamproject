import 'package:flutter/material.dart';
// import 'weather.dart';
import 'homepage.dart';
import 'location.dart';
import 'aboutus.dart';
import 'activity.dart';
import 'road.dart';
import 'weatherapi.dart';
import 'main.dart';
import 'road1.dart';
import 'weatherchinese.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pie.dart';

// import 'car.dart';
class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}
class _HomeMenuState extends State<HomeMenu> {
  bool _visibletravel = false;
  bool _visibletrans = false;
  bool _visibleoptions = false;

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
    return
      ListView(

          children: <Widget>[
            Row(
              children: <Widget>[
                // LOGO
                Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xffbcd4e6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('Images/logo2.png', height: 110,),
                      ),

                      margin: EdgeInsets.only(
                          left: 0, top: 0, right: 0, bottom: 0),
                      height: 120.0,
                    )
                ),
                // NITA
                Expanded(child: Container(
                  alignment: Alignment.center,
                  color: Color(0xffbcd4e6),
//                          color:Colors.white,
                  child: Text('NITA', style: TextStyle(fontSize: 30,
                      letterSpacing: 10,
                      color: Color(0xff2e4453))),
                  margin: EdgeInsets.only(
                      left: 0, top: 0, right: 0, bottom: 0),
                  height: 120.0,
                )),
              ],
            ),

            Column(
              children: <Widget>[
                // 天氣資訊
                Stack(

                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(

//                              elevation: 10.0,
                          color: Color(0xffc5dedd), //0xff87a6bc
                          onPressed: () {
//                                    Navigator.of(context).pushNamed("First");
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Weatherchinese(),
                                    maintainState: false));
                          },
                          child: Container(

                            margin: EdgeInsets.only(
                                left: 30, top: 10, right: 0, bottom: 0),
                            child: Row(

                              children: <Widget>[
                                // Icon(
                                //   Icons.wb_sunny
                                // ),
                                Image.asset(
                                    'Images/sun3.png',
                                    color: Color(0xff3d596d),
//                                    color: Colors.red,
                                    height: 48, width: 48

//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 27,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 10, top: 12, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("天氣資訊 ",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Weather",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 5,),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Text("Weather",
                                //       style: TextStyle(
                                //         // fontWeight: FontWeight.bold,
                                //           fontSize: 16,
                                //           color: Color(0xff3d596d))
                                //   ),
                                // ),
                              ],
                            ),

                          ),

                        ),
                      ),

                    ),
                  ],
                ),

                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(
                          color: Color(0xffdbe7e4), // 0xffa8bece
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (MyApp()),
                                    maintainState: false));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 30, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/smartphone.png',
//                                        color: Color(0xfff3f6f8),
                                    color: Color(0xff3d596d),
                                    height: 45, width: 45
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 28,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 12, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("地圖導航",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Map Navigation",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 8,),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 18, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("Map",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Navigation",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
            Column(
              children: <Widget>[
                // 施工路段
//                 Stack(
// //                   children: <Widget>[
// //                     SizedBox(
// //                       height: 90,
// //                       width: 304,
// //                       child:RaisedButton(
// //                         color:Color(0xfff0efeb),// 0xff87a6bc
// //                         onPressed: () {
// //                           Navigator.pop(context);
// //                           Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                   builder: (context) => (Road1()), maintainState: false));
// //                         },
// //                         child:Container(
// //                           margin: EdgeInsets.only(
// //                               left: 0, top: 10, right: 0, bottom: 0),
// //                           child: Row(
// //                             children: <Widget>[
// //                               Image.asset(
// //                                   'Images/road-block.png',
// //                                   color: Color(0xff3d596d),
// //                                   height: 42, width: 42
// // //                                  fit: BoxFit.fill,
// //                               ),
// //                               SizedBox(width: 33,),
// //                               Text("交通相關",
// //                                   style: TextStyle(
// //                                       // fontWeight: FontWeight.bold,
// //                                       fontSize: 20,
// //
// //                                       color: Color(0xff3d596d))
// //                               ),
// //                               SizedBox(width: 8,),
// //                               Container(
// //                                 margin: EdgeInsets.only(
// //                                     left: 0, top: 0, right: 0, bottom: 0),
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: <Widget>[
// //                                     Text("Transportation",
// //                                         style: TextStyle(
// //                                           // fontWeight: FontWeight.bold,
// //                                             fontSize: 16,
// //                                             color: Color(0xff3d596d))
// //                                     ),
// //                                     // Text("Constructions",
// //                                     //     style: TextStyle(
// //                                     //       // fontWeight: FontWeight.bold,
// //                                     //         fontSize: 16,
// //                                     //         color: Color(0xff3d596d))
// //                                     // )
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: RaisedButton(
                        color: Color(0xfff0efeb), // 0xffa8bece
                        onPressed: () {
                          setState(() {
                            _visibletrans = !_visibletrans;
                          });
//                                    Navigator.of(context).pushNamed("First");
//                           Navigator.pop(context);
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MyHomePage(), maintainState: false));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 30, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/traffic.png',
                                  color: Color(0xff3d596d),
                                  height: 45, width: 45
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 28,),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 0, top: 12, right: 0, bottom: 0),
                                child: Column(

                                  children: <Widget>[
                                    Text("交通相關",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 20,

                                            color: Color(0xff3d596d))
                                    ),
                                    Text("Transportation",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 16,

                                            color: Color(0xff3d596d))
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(width: 8,),
                              // Text("Transportation",
                              //     style: TextStyle(
                              //       // fontWeight: FontWeight.bold,
                              //         fontSize: 16,
                              //
                              //         color: Color(0xff3d596d))
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: _visibletrans,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xfffeecd8), // 0xffa8bece
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pie(),
                                    maintainState: false));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 40, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/car.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 31,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("車禍數據",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Accident Statistics",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // // Text("Statistic",
                                // //     style: TextStyle(
                                // //       // fontWeight: FontWeight.bold,
                                // //         fontSize: 16,
                                // //
                                // //         color: Color(0xff3d596d))
                                // // ),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("Accident Statistics",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Statistics",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: _visibletrans,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xfffeecd8), // 0xffa8bece
                          onPressed: () {
                            setState(() {
                              _visibleoptions = !_visibleoptions;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 40, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/bus.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 35,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("大眾運輸",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Public Transport",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // // Text("Statistic",
                                // //     style: TextStyle(
                                // //       // fontWeight: FontWeight.bold,
                                // //         fontSize: 16,
                                // //
                                // //         color: Color(0xff3d596d))
                                // // ),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("Public Transport",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Transport",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: _visibleoptions,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xffffecf6), // 0xffa8bece
                          onPressed: () {
                            const url = 'http://www.tcbus.com.tw/2.php';
                            launchURL(url);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 50, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/TXG.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 31,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("台中客運",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("TXG Bus",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // // Text("Statistic",
                                // //     style: TextStyle(
                                // //       // fontWeight: FontWeight.bold,
                                // //         fontSize: 16,
                                // //
                                // //         color: Color(0xff3d596d))
                                // // ),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("TXG Bus",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Bus",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: _visibleoptions,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xffffecf6), // 0xffa8bece
                          onPressed: () {
                            const url = 'http://www.changhuabus.com.tw/service_list.asp?id=2164';
                            launchURL(url);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 50, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/CWH.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 31,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("彰化客運",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("CWH Bus",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("CWH Bus",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Bus",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: _visibleoptions,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xffffecf6), // 0xffa8bece
                          onPressed: () {
                            const url = 'http://www.ntbus.com.tw/';
                            launchURL(url);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 50, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/NTO.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 31,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("南投客運",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("NTO Bus",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // Container(
                                //   margin: EdgeInsets.only(
                                //       left: 0, top: 12, right: 0, bottom: 0),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment
                                //         .start,
                                //     children: <Widget>[
                                //       Text("NTO Bus",
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       ),
                                //       Text("Bus",
                                //           // textAlign: TextAlign.center,
                                //           style: TextStyle(
                                //             // fontWeight: FontWeight.bold,
                                //               fontSize: 16,
                                //               color: Color(0xff3d596d))
                                //       )
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: _visibletrans,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 304,
                        child: RaisedButton(
                          color: Color(0xfffeecd8), // 0xffa8bece
                          onPressed: () {
                            const url = 'https://168.thb.gov.tw/';
                            launchURL(url);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 40, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/camera.png',
                                    color: Color(0xff3d596d),
                                    height: 42, width: 42
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 55,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 6, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("監視路況",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("CCTV",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,

                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 27,),
                                // Text("CCTV",
                                //     style: TextStyle(
                                //       // fontWeight: FontWeight.bold,
                                //         fontSize: 16,
                                //
                                //         color: Color(0xff3d596d))
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                // 景點資訊
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(
                          color: Color(0xffdbe7e4), // 0xffa8bece
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Location()),
                                    maintainState: false));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 35, top: 10, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'Images/pin.png',
//                                        color: Color(0xfff3f6f8),
                                    color: Color(0xff3d596d),
                                    height: 45, width: 45
//                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 28,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 10, top: 12, right: 0, bottom: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Text("景點資訊",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Attractions",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 8,),
                                // Text("Attractions",
                                //     style: TextStyle(
                                //       // fontWeight: FontWeight.bold,
                                //         fontSize: 16,
                                //         color: Color(0xff3d596d))
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // 旅遊相關
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: RaisedButton(
                        color: Color(0xffd7e3ea), // 0xffa8bece
                        onPressed: () {
                          setState(() {
                            _visibletravel = !_visibletravel;
                          });
//                                    Navigator.of(context).pushNamed("First");
//                           Navigator.pop(context);
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MyHomePage(), maintainState: false));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 40, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/luggage.png',
                                  color: Color(0xff3d596d),
                                  height: 45, width: 45
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 28,),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 0, top: 12, right: 0, bottom: 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("旅遊相關",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 20,

                                            color: Color(0xff3d596d))
                                    ),
                                    Text("Travel",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 16,

                                            color: Color(0xff3d596d))
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(width: 8,),
                              // Text("Travel",
                              //     style: TextStyle(
                              //       // fontWeight: FontWeight.bold,
                              //         fontSize: 16,
                              //
                              //         color: Color(0xff3d596d))
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Visibility(
              visible: _visibletravel,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    width: 304,
                    child: RaisedButton(
                      color: Color(0xfffff3eb), // 0xffa8bece
                      onPressed: () {
//                                    Navigator.of(context).pushNamed("First");
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                                maintainState: false));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 40, top: 10, right: 0, bottom: 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                                'Images/snakelogo.png',
                                color: Color(0xff3d596d),
                                height: 45, width: 45
//                                  fit: BoxFit.fill,
                            ),
                            SizedBox(width: 28,),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, top: 6, right: 0, bottom: 0),
                              child: Column(
                                children: <Widget>[
                                  Text("毒蛇小知識",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                          fontSize: 20,

                                          color: Color(0xff3d596d))
                                  ),
                                  Text("Snake",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                          fontSize: 16,

                                          color: Color(0xff3d596d))
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(width: 8,),
                            // Text("Snake",
                            //     style: TextStyle(
                            //       // fontWeight: FontWeight.bold,
                            //         fontSize: 16,
                            //
                            //         color: Color(0xff3d596d))
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Visibility(
              visible: _visibletravel,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    width: 304,
                    child: RaisedButton(
                      color: Color(0xfffff3eb), // 0xffa8bece
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Activity(),
                                maintainState: false));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 40, top: 10, right: 0, bottom: 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                                'Images/calendar.png',
                                color: Color(0xff3d596d),
                                height: 42, width: 42
//                                  fit: BoxFit.fill,
                            ),
                            SizedBox(width: 31,),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, top: 6, right: 0, bottom: 0),
                              child: Column(
                                children: <Widget>[
                                  Text("近期活動",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                          fontSize: 20,

                                          color: Color(0xff3d596d))
                                  ),
                                  Text("Activities",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                          fontSize: 16,

                                          color: Color(0xff3d596d))
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(width: 27,),
                            // Text("Activities",
                            //     style: TextStyle(
                            //       // fontWeight: FontWeight.bold,
                            //         fontSize: 16,
                            //
                            //         color: Color(0xff3d596d))
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),


            Row(
              children: <Widget>[
                // 關於我們
                Expanded(child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child: RaisedButton(
                        color: Color(0xffbdcedb), // 0xff4f748e
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Aboutus(),
                                  maintainState: false));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 40, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/group.png',
                                  color: Color(0xff3d596d),
                                  height: 48, width: 48
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 25,),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 0, top: 12, right: 0, bottom: 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("使用手冊",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xff3d596d))
                                    ),
                                    Text("Manual",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 16,

                                            color: Color(0xff3d596d))
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(width: 8,),
                              // Text("Manual",
                              //     style: TextStyle(
                              //       // fontWeight: FontWeight.bold,
                              //         fontSize: 16,
                              //
                              //         color: Color(0xff3d596d))
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
//                    Expanded(child: Container(
//                      alignment: Alignment.center,
//                      color:Color(0xff82C0CC),
//                      margin: EdgeInsets.only(
//                          left: 0, top: 0, right: 0, bottom: 0),
//                      height: 100.0,
//                    ),),
              ],
            ),
            Container(
              color: Color(0xffbcd4e6),
              height: 320,
            ),
          ]
      );
  }
}