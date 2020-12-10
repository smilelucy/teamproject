import 'package:flutter/material.dart';
import 'package:fluttertry5/main.dart';
import 'package:marquee/marquee.dart';
// import 'HomeMenu.dart';
import 'aboutus.dart';
import 'mainpage.dart';
import 'dart:async';

// void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController pageController = PageController();
  int pageCount = 8;

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),

          // leading: Padding(
          //   padding: EdgeInsets.only(right: 12),
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
        backgroundColor: Colors.deepOrange,
        body: Stack(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(
                  left: 0, top: 50, right: 0, bottom: 0),
              height: 303,
              // padding: EdgeInsets.all(0.0001),
              // margin: EdgeInsets.all(0.0005),
              color: Color(0xfffcbf49),
              child: LimitedBox(
                maxHeight: 302,
                child: PageView(
                  controller: pageController,
                  children: [
                    AdsSliderCard(sliderImage: "Images/one.jpg",
                    ),AdsSliderCard(sliderImage: "Images/two.jpg",
                    ),AdsSliderCard(sliderImage: "Images/four.jpg",
                    ),AdsSliderCard(sliderImage: "Images/three.jpg",
                    ),AdsSliderCard(sliderImage: "Images/eight.jpg",
                    ),AdsSliderCard(sliderImage: "Images/five.jpg",
                    ),AdsSliderCard(sliderImage: "Images/six.jpg",
                    ),AdsSliderCard(sliderImage: "Images/seven.gif",
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.only(top: 350.0),
              children: [
                _buildMarquee(),

                // _buildComplexMarquee(),
              ].map(_wrapWithStuff).toList(),
            ),
          ],

        ),
      ),
    );
  }

  Widget _buildMarquee() {
    return Marquee(
      text: '台21線雙向81K+000至81K+050新山路段第一階段自109年4月21日起至109年5月20日..',
    );
  }

  // Widget _buildComplexMarquee() {
  //   return Marquee(
  //     text: 'Some sample text that takes some space.',
  //     style: TextStyle(fontWeight: FontWeight.bold),
  //     scrollAxis: Axis.horizontal,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     blankSpace: 20.0,
  //     velocity: 100.0,
  //     pauseAfterRound: Duration(seconds: 1),
  //     showFadingOnlyWhenScrolling: true,
  //     fadingEdgeStartFraction: 0.1,
  //     fadingEdgeEndFraction: 0.1,
  //     numberOfRounds: 3,
  //     startPadding: 10.0,
  //     accelerationDuration: Duration(seconds: 1),
  //     accelerationCurve: Curves.linear,
  //     decelerationDuration: Duration(milliseconds: 500),
  //     decelerationCurve: Curves.easeOut,
  //   );
  // }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(height: 30.0, color: Colors.white, child: child),
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