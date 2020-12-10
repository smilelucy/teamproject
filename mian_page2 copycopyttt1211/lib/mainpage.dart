import 'dart:async';
import 'package:fluttertry5/location3.dart';
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
// import 'weatherchinese2.dart';
// import 'pie.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'location2.dart';
// import 'main2.dart';
import 'road2.dart';
import 'main3.dart';
import 'main4.dart';


class Try extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}



class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}
class _MainpageState extends State<Mainpage>{

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  PageController pageController = PageController();
  // int currentIndex = 0;
  // bool isSelected = pageController.hasClients ? pageController.page == index : pageController.initialPage == index;
  int pageCount = 13;

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(pageController.hasClients) {
        Timer.periodic(Duration(seconds: 2), (Timer timer) {
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
              color:Color(0xfffff3eb),// 0xffa8bece
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
              color:Color(0xffffecf6),// 0xffa8bece
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
                        'Images/TXG.png',
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
              color:Color(0xffffecf6),// 0xffa8bece
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
                        'Images/CWH.png',
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
              color:Color(0xffffecf6),// 0xffa8bece
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
                        'Images/NTO.png',
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
              color:Color(0xfffeecd8),// 0xffa8bece
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
              color:Color(0xfffeecd8),// 0xffa8bece
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
              color:Color(0xfffeecd8),// 0xffa8bece
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

  // launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
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
                            // height: MediaQuery.of(context).size.height/3,
                            width: MediaQuery.of(context).size.width/2,
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
                          Padding(
                            padding: const EdgeInsets.only(left: 130,top: 70,),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //     left: 140, top: 70, right: 0, bottom: 0),
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
                                  Text('Tourism Application',style: GoogleFonts.courgette(
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
                          GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15683';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/movie.png",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15282';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/seven.gif",
                            ),
                          ),GestureDetector(
                            onTap: (){
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15768';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/07.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15769';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/08.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15770';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/09.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15771';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/10.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15773';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/11.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.nthcc.gov.tw/A4_1/content/15781';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/12.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.facebook.com/NantouNewYear/';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/year.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://bao-ming.com/eb/www/activity_content.php?activitysn=4399';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/sunmoon.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.facebook.com/2020Zhushanmouse/';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/light.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.youtube.com/embed/rHY3YKq6ERk';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/puli.jpg",
                            ),
                          ),GestureDetector(
                            onTap: () {
                              const url = 'https://www.ibodygo.com.tw/EventTopic.aspx?n=1103';
                              launchURL(url);
                            },
                            child: AdsSliderCard(sliderImage: "Images/tea.jpg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 42,),
                  GestureDetector( // 可以讓Images變成可點擊
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (MyApp4()), maintainState: false));
                    },
                    child: Stack(
                      children: <Widget>[

                        Container(
                          height: 100,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("Images/map3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),


                        ),

                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          height: 80,
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
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Expanded(
                          child: Container(
                            // height:ScreenUtil().setHeight(20),
                            // width: MediaQuery.of(context).size.width,
                            // margin: EdgeInsets.only(
                            //     left: 0, top: 10, right: 0, bottom: 0),
                            child:SizedBox(
                              height:  (MediaQuery.of(context).size.height)/11,
                                width: (MediaQuery.of(context).size.width)/2,
                              // width: 304,
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
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Expanded(
                          child: Stack(

                            children: <Widget>[
                              SizedBox(
                                // height: 80,
                                height:  (MediaQuery.of(context).size.height)/11,
                                width: (MediaQuery.of(context).size.width)/2,
                                // width: 200,
                                child:RaisedButton(

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
                            ],
                          ),
                        ),
                      ),
                      // 景點資訊

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Expanded(
                          child:Stack(
                            children: <Widget>[
                              SizedBox(
                                // height: 80,
                                height:  (MediaQuery.of(context).size.height)/11,
                                width: (MediaQuery.of(context).size.width)/2,
                                // width: 195,
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
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Expanded(
                          child:Stack(
                            children: <Widget>[
                              SizedBox(
                                // height: 80,
                                height:  (MediaQuery.of(context).size.height)/11,
                                width: (MediaQuery.of(context).size.width)/2,
                                // width: 304,
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
                                              builder: (context) => (Location2()), maintainState: false));
                                    },
                                    child:Container(
                                      margin: EdgeInsets.only(
                                          left: 0, top: 0, right: 0, bottom: 0),
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset(
                                              'Images/pin11.png',
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
         text:
             ' 🔶台14線與國道3號草屯交流道至敦煌路三段辦理鳥嘴潭淨水場導水管管線工程施作，預計施工至110年1月31日，請用路人依現場人員指揮 小心行駛 '
             ' 🔶台21線(新中橫公路)雙向107K至135K草坪頭至迴頭彎路段，自109年12月7日至109年12月11日每日8時起至18時止，於內外車道進行標線模糊改善工程，請注意路況並小心駕駛 '
             ' 🔶台16線雙向20K~21K頂崁路段進行彎道改善工程，實施單線雙向通行交通管制，預計110年2月完工，請依現場人員指揮小心行駛 '
                 ' 🔶日月潭台21線(中山路)62K-63K及台21甲線(中正路)6K-7K汙水下水道人孔陰井改善工程施作，預計12月底完工，請用路人行經上開路段小心行駛 '
                 ' 🔶台63線(中投公路)下草屯交流道墩煌路，路側鳥嘴潭管線工程施作中，預計施工至12月底，工區道路因施工縮減，請用路人減速慢行 '
                 ' 🔶日月潭臺21線65K-66K辦理汰換管線工程，預計109年底前完工，請用路人小心行駛 '
                 ' 🔶臺14線22K處(陳府將軍廟)路段鳥嘴潭管線工程施工，東西向各封閉1車道，預計12月底完工，請用路人行經上開路段小心行駛 '
                 ' 🔶合歡山台14甲29.3K昆陽小停車場施工辦理入口意象改善工程將至110年1月31日前封閉暫停開放 ',
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