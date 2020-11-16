import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'weatherapi.dart';
import 'main.dart';
import 'location.dart';
import 'road.dart';
import 'homepage.dart';
// import 'location.dart';
// import 'aboutus.dart';
import 'activity.dart';
import 'road1.dart';
// import 'carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'weatherchinese.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pie.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


class Try extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Mainpage(),
    );
  }
}



class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}
class _MainpageState extends State<Mainpage>{

  PageController pageController = PageController();
  int pageCount = 3;

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      print("page ${pageController.page}");
      // double nextPage = pageController.page + 1;
      if(pageController.page>=pageCount-1){
        pageController.animateToPage(
            0, duration: Duration(microseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn);
      }else{
        pageController.nextPage(
           duration: Duration(microseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn);
      }

    });
  }

  void showMyDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // content: const Text(
          //   'Message',
          // ),
          actions: <Widget>[
            RaisedButton(
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
                    left: 0, top: 10, right: 0, bottom: 0),
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
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
                    left: 0, top: 10, right: 0, bottom: 0),
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
                  ],
                ),
              ),
            ),
            // FlatButton(
            //   child: const Text('OK'),
            //   onPressed: () {
            //     Navigator.of(context).pop(true);
            //   },
            // ),
          ],
        );
      },
    );
  }
  void showMytransDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // content: const Text(
          //   'Message',
          // ),
          actions: <Widget>[
            RaisedButton(
              color:Color(0xfff7edf0),// 0xffa8bece
              onPressed: () {
                const url = 'http://www.tcbus.com.tw/2.php';
                launchURL(url);
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/snakelogo.png',
                        color: Color(0xff3d596d),
                        height: 45, width: 45
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 28,),
                    Text("台中客運",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color:Color(0xfffff3eb),// 0xffa8bece
              onPressed: () {
                const url = 'http://www.changhuabus.com.tw/service_list.asp?id=2164';
                launchURL(url);
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/calendar.png',
                        color: Color(0xff3d596d),
                        height: 42, width: 42
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 31,),
                    Text("彰化客運",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color:Color(0xfffff3eb),// 0xffa8bece
              onPressed: () {
                const url = 'http://www.ntbus.com.tw/';
                launchURL(url);
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/calendar.png',
                        color: Color(0xff3d596d),
                        height: 42, width: 42
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 31,),
                    Text("南投客運",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            // FlatButton(
            //   child: const Text('OK'),
            //   onPressed: () {
            //     Navigator.of(context).pop(true);
            //   },
            // ),
          ],
        );
      },
    );
  }
  void showMycarDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // content: const Text(
          //   'Message',
          // ),
          actions: <Widget>[
            RaisedButton(
              color:Color(0xffcdd5af),// 0xffa8bece
              onPressed: () {
//                                    Navigator.of(context).pushNamed("First");
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Road1(), maintainState: false)
                    // builder: (context) => Road1(), maintainState: false)
                );
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/car.png',
                        color: Color(0xff3d596d),
                        height: 45, width: 45
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 28,),
                    Text("車禍數據",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color:Color(0xffe9edc9),// 0xffa8bece
              onPressed: () {
               showMytransDialog(context);
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/bus.png',
                        color: Color(0xff3d596d),
                        height: 42, width: 42
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 31,),
                    Text("大眾運輸",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color:Color(0xfffefae0),// 0xffa8bece
              onPressed: () {
                const url = 'https://168.thb.gov.tw/';
                launchURL(url);
              },
              child:Container(
                margin: EdgeInsets.only(
                    left: 0, top: 10, right: 0, bottom: 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        'Images/camera.png',
                        color: Color(0xff3d596d),
                        height: 42, width: 42
//                                  fit: BoxFit.fill,
                    ),
                    SizedBox(width: 31,),
                    Text("監視路況",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                            fontSize: 20,

                            color: Color(0xff3d596d))
                    ),
                  ],
                ),
              ),
            ),
            // FlatButton(
            //   child: const Text('OK'),
            //   onPressed: () {
            //     Navigator.of(context).pop(true);
            //   },
            // ),
          ],
        );
      },
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    // TODO: implement build
    return MaterialApp (
        debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Container(
          color:Color(0xffe2eafc),
          margin: EdgeInsets.only(top: 10),
          child: Stack(
            children: <Widget>[
              ListView(
                padding: EdgeInsets.only(top: 395.0),
                children: [
                  _buildMarquee(),

                  // _buildComplexMarquee(),
                ].map(_wrapWithStuff).toList(),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // LOGO
                      Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            // color:Color(0xffbcd4e6),
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset('Images/logo2.png',height: 75,),
                            ),

                            margin: EdgeInsets.only(
                                left: 25, top: 10, right: 0, bottom: 0),
                            height: 90.0,
                          ),
                          Container(
                            // color:Color(0xffbcd4e6),
                            child:
                            Text(
                              'NITA',
                              style: GoogleFonts.permanentMarker(
                                textStyle: Theme.of(context).textTheme.display1,
                                fontSize: 30,
                                letterSpacing: 10,
                                color: Color(0xff2e4453),
                                fontWeight: FontWeight.w700,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                            // Text('NITA',
                            //     style: TextStyle(fontFamily: 'RobotoMono',fontSize: 30,letterSpacing: 10,color: Color(0xff2e4453)
                            //     )),
                            margin: EdgeInsets.only(
                                left: 180, top: 28, right: 0, bottom: 0),
                            // height: 120.0,
                          ),
                          // SizedBox(height: ,),
                          Container(
                            margin: EdgeInsets.only(
                                left: 140, top: 70, right: 0, bottom: 0),
                            child: Row(
                              children: <Widget>[
                                // SizedBox(height: 20,),

                                Text('Nantou Information',style: GoogleFonts.courgette(
                                  textStyle: Theme.of(context).textTheme.display1,
                                  fontSize: 12,
                                  // letterSpacing: 10,
                                  // color: Color(0xff2e4453),
                                  fontWeight: FontWeight.w700,
                                  // fontStyle: FontStyle.italic,
                                ),),
                                SizedBox(width: 5,),
                                Text('Tourism  Application',style: GoogleFonts.courgette(
                                  textStyle: Theme.of(context).textTheme.display1,
                                  fontSize: 12,
                                  // letterSpacing: 10,
                                  // color: Color(0xff2e4453),
                                  fontWeight: FontWeight.w700,
                                  // fontStyle: FontStyle.italic,
                                ),)
                              ],
                            ),
                          ),
                          // ListView(
                          //   // padding: EdgeInsets.only(top: 50.0),
                          //   children: [
                          //     _buildMarquee(),
                          //
                          //     // _buildComplexMarquee(),
                          //   ].map(_wrapWithStuff).toList(),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 0),
                    height: 303,
                    // padding: EdgeInsets.all(0.0001),
                    // margin: EdgeInsets.all(0.0005),
                    color: Color(0xfffcbf49),
                    child: LimitedBox(
                      maxHeight: 302,
                      child: PageView(
                        controller: pageController,
                        children: [
                          AdsSliderCard(sliderImage: "Images/movie.png",
                          ),AdsSliderCard(sliderImage: "Images/up.jpg",
                          ),AdsSliderCard(sliderImage: "Images/seven.gif",
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ListView(
                  //   // padding: EdgeInsets.only(top: 50.0),
                  //   children: [
                  //     _buildMarquee(),
                  //     // _buildComplexMarquee(),
                  //   ].map(_wrapWithStuff).toList(),
                  // ),

                  SizedBox(height: 42,),
                  GestureDetector( // 可以讓Images變成可點擊
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (MyApp()), maintainState: false));
                    },
                    child: Stack(
                      children: <Widget>[

                        Container(
                          height: 120,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("Images/map3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child:Container(
                            margin: EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 0),

                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          height: 100,
                          // width: MediaQuery.of(context).size.width,
                          color: Color.fromRGBO(255, 255, 252, 0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                  'Images/smartphone.png',
//                                        color: Color(0xfff3f6f8),
//                                           color: Color(0xfff1faee),
                                  color: Colors.black,
                                  height: 45, width: 45
//                                  fit: BoxFit.fill,
                              ),
                              SizedBox(width: 28,),
                              Text("地圖導航",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black
                                    // color:Color(0xfff1faee)
                                  )
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          // height:ScreenUtil().setHeight(20),
                          width: MediaQuery.of(context).size.width,
                          // margin: EdgeInsets.only(
                          //     left: 0, top: 10, right: 0, bottom: 0),
                          child:SizedBox(
                            height: 80,
                            width: 304,
                            child:RaisedButton(
                              color:Color(0xfff0efeb),// 0xff87a6bc
                              onPressed: () {
                                showMycarDialog(context);
                                // Navigator.pop(context);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => (Road1()), maintainState: false));
                              },
                              child:Container(
                                // width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                    left: 0, top: 0, right: 0, bottom: 0),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                        'Images/traffic.png',
                                        color: Color(0xff3d596d),
                                        height: 45, width: 45
//                                  fit: BoxFit.fill,
                                    ),
                                    SizedBox(width: 17,),
                                    Text("交通相關",
                                        style: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                            fontSize: 20,

                                            color: Color(0xff3d596d))
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        child: Stack(

                          children: <Widget>[
                            SizedBox(
                              height: 80,
                              width: 200,
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
                                    // width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                        left: 0, top: 0, right: 0, bottom: 0),
                                    child:Row(

                                      children: <Widget>[
                                        // Icon(
                                        //   Icons.wb_sunny
                                        // ),
                                        Image.asset(
                                            'Images/sun3.png',
                                            color: Color(0xff3d596d),
//                                    color: Colors.red,
                                            height: 43, width: 43

//                                  fit: BoxFit.fill,
                                        ),
                                        SizedBox(width: 15,),
                                        Text("天氣資訊 ",
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Color(0xff3d596d))
                                        ),
                                        // SizedBox(width: 5,),
                                        // Container(
                                        //   margin: EdgeInsets.only(
                                        //       left: 0, top: 0, right: 0, bottom: 0),
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
                      ),
                      // 景點資訊

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 80,
                              width: 195,
                              child:RaisedButton(
                                color:Color(0xffd7e3ea),// 0xffa8bece
                                onPressed: (){
                                  showMyDialog(context);
                                },
                                // onPressed: () => showDialog(
                                //   // context: context,
                                //   // builder: (context) => AboutWidget(),
                                // ),
                                //   onPressed: () {
                                //     show();
                                //     setState(() {
                                //       _visibletravel = !_visibletravel;
                                //     });
                                //          Navigator.of(context).pushNamed("First");
                                // Navigator.pop(context);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => MyHomePage(), maintainState: false));
                                //   },
                                child:Container(
                                  margin: EdgeInsets.only(
                                      left: 0, top: 0, right: 0, bottom: 0),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset(
                                          'Images/luggage.png',
                                          color: Color(0xff3d596d),
                                          height: 45, width: 45
//                                  fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 20,),
                                      Text("旅遊相關",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                              fontSize: 20,

                                              color: Color(0xff3d596d))
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
                      ),
                      Expanded(
                        child:Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 80,
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
                                        left: 0, top: 0, right: 0, bottom: 0),
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset(
                                            'Images/pin.png',
//                                        color: Color(0xfff3f6f8),
                                            color: Color(0xff3d596d),
                                            height: 43, width: 43
//                                  fit: BoxFit.fill,
                                        ),
                                        SizedBox(width: 18,),
                                        Text("景點資訊",
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                                fontSize: 20,

                                                color:Color(0xff3d596d))
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
                      ),
                    ],
                  )

                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
  Widget _buildMarquee() {
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Color.fromRGBO(0, 47, 122, 0.7)), //Color(0xffE29578)
          // borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Marquee(
        text: '** 台21線雙向81K+000至81K+050新山路段第一階段自109年4月21日起至109年5月20日..'
            ' **  嗨嗨嗨',
        style: TextStyle(
          color: Color(0xfffefae0)
        ),
      ),
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.only(top:15.0,bottom: 10.0),
      child: Container(
          height: 28.0,
          color:  Color.fromRGBO(0, 47, 122, 0.7),
          child: child),
    );
  }
}

class AdsSliderCard extends StatelessWidget{
  final String sliderImage;
  AdsSliderCard({this.sliderImage});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          // margin: EdgeInsets.only(
          //     left: 0, top: 10, right: 0, bottom: 0),
          height: 250,
          child: ClipRect(
              child: Image.asset(
                sliderImage,
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}