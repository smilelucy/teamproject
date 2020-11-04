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
// import 'car.dart';
class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}
class _HomeMenuState extends State<HomeMenu>{
  bool _visibletravel = false;
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
                      color:Color(0xffbcd4e6),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('Images/logo2.png',height: 110,),
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
                  child: Text('NITA',style: TextStyle(fontSize: 30,letterSpacing: 10,color: Color(0xff2e4453))),
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
                      child:ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(

//                              elevation: 10.0,
                          color:Color(0xffc5dedd), //0xff87a6bc
                          onPressed: () {
//                                    Navigator.of(context).pushNamed("First");
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Weatherchinese(), maintainState: false));
                          },
                          child:Container(

                            margin: EdgeInsets.only(
                                left: 0, top: 10, right: 0, bottom: 0),
                            child:Row(

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
                                Text("天氣資訊 ",
                                    style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff3d596d))
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 0, right: 0, bottom: 0),
                                  child: Text("Weather",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(0xff3d596d))
                                  ),
                                ),
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
                      child:ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(
                          color: Color(0xffdbe7e4),// 0xffa8bece
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (MyApp()), maintainState: false));
                          },
                          child:Container(
                            margin: EdgeInsets.only(
                                left: 0, top: 10, right: 0, bottom: 0),
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
                                Text("地圖導航",
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                        fontSize: 20,

                                        color:Color(0xff3d596d))
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 18, right: 0, bottom: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Map",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      ),
                                      Text("Navigation",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xff3d596d))
                                      )
                                    ],
                                  ),
                                ),
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
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child:RaisedButton(
                        color:Color(0xfff0efeb),// 0xff87a6bc
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Road1()), maintainState: false));
                        },
                        child:Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/road-block.png',
                                  color: Color(0xff3d596d),
                                  height: 42, width: 42
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 33,),
                              Text("施工路段",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      color: Color(0xff3d596d))
                              ),
                              SizedBox(width: 8,),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 0, top: 18, right: 0, bottom: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Road",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Color(0xff3d596d))
                                    ),
                                    Text("Constructions",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Color(0xff3d596d))
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // 景點資訊
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child:ButtonTheme(
//                            shape: RoundedRectangleBorder(
////                                borderRadius: BorderRadius.circular(18.0),
//                                side: BorderSide(color: Color(0xff4f748e))),
                        child: RaisedButton(
                          color: Color(0xffdbe7e4),// 0xffa8bece
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Location()), maintainState: false));
                          },
                          child:Container(
                            margin: EdgeInsets.only(
                                left: 0, top: 10, right: 0, bottom: 0),
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
                                Text("景點資訊",
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                        fontSize: 20,

                                        color:Color(0xff3d596d))
                                ),
                                SizedBox(width: 8,),
                                Text("Attractions",
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff3d596d))
                                ),
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
                      child:RaisedButton(
                        color:Color(0xffd7e3ea),// 0xffa8bece
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
                        child:Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/luggage.png',
                                  color: Color(0xff3d596d),
                                  height: 45, width: 45
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 28,),
                              Text("旅遊相關",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 20,

                                      color: Color(0xff3d596d))
                              ),
                              SizedBox(width: 8,),
                              Text("Travel",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 16,

                                      color: Color(0xff3d596d))
                              ),
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
                    child:RaisedButton(
                      color:Color(0xfff7edf0),// 0xffa8bece
                      onPressed: () {
//                                    Navigator.of(context).pushNamed("First");
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(), maintainState: false));
                      },
                      child:Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 10, right: 0, bottom: 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                                'Images/snakelogo.png',
                                color: Color(0xff3d596d),
                                height: 45, width: 45
//                                  fit: BoxFit.fill,
                            ),
                            SizedBox(width: 28,),
                            Text("毒蛇小知識",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    fontSize: 20,

                                    color: Color(0xff3d596d))
                            ),
                            SizedBox(width: 8,),
                            Text("Snake",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    fontSize: 16,

                                    color: Color(0xff3d596d))
                            ),
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
                    child:RaisedButton(
                      color:Color(0xfffff3eb),// 0xffa8bece
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Activity(), maintainState: false));
                      },
                      child:Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 10, right: 0, bottom: 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                                'Images/calendar.png',
                                color: Color(0xff3d596d),
                                height: 42, width: 42
//                                  fit: BoxFit.fill,
                            ),
                            SizedBox(width: 31,),
                            Text("近期活動",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    fontSize: 20,

                                    color: Color(0xff3d596d))
                            ),
                            SizedBox(width: 27,),
                            Text("Activities",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    fontSize: 16,

                                    color: Color(0xff3d596d))
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
//             Row(
//               children: <Widget>[
//                 // 關於我們
//                 Expanded(child: Stack(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 90,
//                       width: 304,
//                       child:RaisedButton(
//                         color:Color(0xffbdcedb),// 0xff4f748e
//                         onPressed: () {
//                           Navigator.pop(context);
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Car(), maintainState: false));
//                         },
//                         child:Container(
//                           margin: EdgeInsets.only(
//                               left: 0, top: 10, right: 0, bottom: 0),
//                           child: Row(
//                             children: <Widget>[
//                               Image.asset(
//                                   'Images/group.png',
//                                   color: Color(0xff3d596d),
//                                   height: 48, width: 48
// //                                  fit: BoxFit.fill,
//                               ),
//                               SizedBox(width: 25,),
//                               Text("車禍相關",
//                                   style: TextStyle(
//                                     // fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                       color: Color(0xff3d596d))
//                               ),
//                               SizedBox(width: 8,),
//                               Text("car Accident",
//                                   style: TextStyle(
//                                     // fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//
//                                       color: Color(0xff3d596d))
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
// //                    Expanded(child: Container(
// //                      alignment: Alignment.center,
// //                      color:Color(0xff82C0CC),
// //                      margin: EdgeInsets.only(
// //                          left: 0, top: 0, right: 0, bottom: 0),
// //                      height: 100.0,
// //                    ),),
//               ],
//             ),

            Row(
              children: <Widget>[
                // 關於我們
                Expanded(child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                      width: 304,
                      child:RaisedButton(
                        color:Color(0xffbdcedb),// 0xff4f748e
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Aboutus(), maintainState: false));
                        },
                        child:Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                  'Images/group.png',
                                  color: Color(0xff3d596d),
                                  height: 48, width: 48
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 25,),
                              Text("使用手冊",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff3d596d))
                              ),
                              SizedBox(width: 8,),
                              Text("Manual",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 16,

                                      color: Color(0xff3d596d))
                              ),
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
              color:Color(0xffbcd4e6),
              height:320,
            ),
          ]
      );
//      ListView(
//      children: <Widget>[
//        Row(
//          children: <Widget>[
//            // LOGO
//            Expanded(
//                child: Container(
//                  alignment: Alignment.center,
//                  color:Color(0xffbcd4e6),
//                  child:ClipRRect(
//                    borderRadius: BorderRadius.circular(20.0),
//                    child: Image.asset('Images/logo2.png',height: 110,),
//                  ),
//
//                  margin: EdgeInsets.only(
//                      left: 0, top: 0, right: 0, bottom: 0),
//                  height: 120.0,
//                )
//            ),
//            // NITA
//            Expanded(child: Container(
//              alignment: Alignment.center,
//              color: Color(0xffbcd4e6),
////                          color:Colors.white,
//              child: Text('NITA',style: TextStyle(fontSize: 30,letterSpacing: 10,color: Color(0xff2e4453))),
//              margin: EdgeInsets.only(
//                  left: 0, top: 0, right: 0, bottom: 0),
//              height: 120.0,
//            )),
//          ],
//        ),
//        Column(
//          children: <Widget>[
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 100,
//                  color:Color(0xffc5dedd),
//                  child: ListTile(
////            leading: Image.asset("Images/sun.png",color: Color(0xff3d596d)),
//                      title:
//                      new Center(
//                        child: Container(
//                          margin: EdgeInsets.only(
//                              left: 0, top: 10, right: 0, bottom: 0),
//                          child: Column(
//                            children: <Widget>[
//                              Image.asset(
//                                  "Images/sun.png",
//                                  color: Color(0xff3d596d),
//                                  height: 50, width: 50
//                              ),
//                              Text(
//                                "天氣資訊",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 20,
//                                    color: Color(0xff3d596d)),
//                              ),
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                ),
//              ],
//            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 100,
//                  color:Color(0xffdbe7e4),
//                  child: ListTile(
////            leading: Image.asset("Images/sun.png",color: Color(0xff3d596d)),
//                      title:
//                      new Center(
//                        child: Container(
//                          margin: EdgeInsets.only(
//                              left: 0, top: 10, right: 0, bottom: 0),
//                          child: Column(
//                            children: <Widget>[
//                              Image.asset(
//                                  'Images/pin.png',
//                                  color: Color(0xff3d596d),
//                                  height: 50, width: 50
//                              ),
//                              Text(
//                                "景點資訊",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 20,
//                                    color: Color(0xff3d596d)),
//                              ),
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                ),
//              ],
//            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 100,
//                  color:Color(0xfff0efeb),
//                  child: ListTile(
////            leading: Image.asset("Images/sun.png",color: Color(0xff3d596d)),
//                      title:
//                      new Center(
//                        child: Container(
//                          margin: EdgeInsets.only(
//                              left: 0, top: 10, right: 0, bottom: 0),
//                          child: Column(
//                            children: <Widget>[
//                              Image.asset(
//                                  'Images/barrier.png',
//                                  color: Color(0xff3d596d),
//                                  height: 50, width: 50
//                              ),
//                              Text(
//                                "施工路段",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 20,
//                                    color:  Color(0xff3d596d)),
//                              ),
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                ),
//              ],
//            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 100,
//                  color:Color(0xffd7e3ea),
//                  child: ListTile(
////            leading: Image.asset("Images/sun.png",color: Color(0xff3d596d)),
//                      title:
//                      new Center(
//                        child: Container(
//                          margin: EdgeInsets.only(
//                              left: 0, top: 10, right: 0, bottom: 0),
//                          child: Column(
//                            children: <Widget>[
//                              Image.asset(
//                                  'Images/luggage.png',
//                                  color: Color(0xff3d596d),
//                                  height: 50, width: 50
////                                  fit: BoxFit.fill,
//                              ),
//                              Text("旅遊相關",
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 20,
//
//                                      color: Color(0xff3d596d))),
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                ),
//              ],
//            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 100,
//                  color:Color(0xffbdcedb),
//                  child: ListTile(
////            leading: Image.asset("Images/sun.png",color: Color(0xff3d596d)),
//                      title:
//                      new Center(
//                        child: Container(
//                          margin: EdgeInsets.only(
//                              left: 0, top: 10, right: 0, bottom: 0),
//                          child: Column(
//                            children: <Widget>[
//                              Image.asset(
//                                  'Images/group.png',
//                                  color: Color(0xff3d596d),
//                                  height: 50, width: 50
////                                  fit: BoxFit.fill,
//                              ),
//                              Text("關於我們",
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 20,
//
//                                      color: Color(0xff3d596d))),
//                            ],
//                          ),
//                        ),
//                      )
//                  ),
//                ),
//              ],
//            ),
//            Container(
//              color:Color(0xffbcd4e6),
//              height:320,
//            ),
//          ],
//        )
//
//      ],
//    );
  }
}
