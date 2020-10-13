import 'dart:async';

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
  // int photoIndex = 0;
  //
  // List<String> photos = [
  //   'Images/sure1.jpg',
  //   'Images/sure2.jpg',
  //   'Images/sure3.jpg',
  //   'Images/sure4.jpg',
  // ];
  //
  // void _previousImage() {
  //   setState(() {
  //     photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
  //   });
  // }
  //
  // void _nextImage() {
  //   setState(() {
  //     photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
  //   });
  // }

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



  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp (
      home: Scaffold(
        body: Container(
          color:Color(0xffe2eafc),
          margin: EdgeInsets.only(top: 25),
          child: Column(
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
                            child: Image.asset('Images/logo2.png',height: 110,),
                          ),

                          margin: EdgeInsets.only(
                              left: 65, top: 0, right: 0, bottom: 0),
                          height: 120.0,
                        ),
                        Container(
                          // color:Color(0xffbcd4e6),
                            child: Text('NITA',
                                style: TextStyle(fontSize: 30,letterSpacing: 10,color: Color(0xff2e4453)
                                )
                            ),
                          margin: EdgeInsets.only(
                              left: 210, top: 40, right: 0, bottom: 0),
                          // height: 120.0,
                        ),
                      ],
                  ),
                ],
              ),
              Container(
                // margin: EdgeInsets.only(top:0),
                child: LimitedBox(
                  maxHeight: 300,
                  child: PageView(
                    controller: pageController,
                    children: [
                      AdsSliderCard(sliderImage: "Images/activity1.jpg",
                      ),AdsSliderCard(sliderImage: "Images/activity2.jpg",
                      ),AdsSliderCard(sliderImage: "Images/activity3.jpg",
                      ),
                    ],
                  ),
                ),
              ),
              // Center(
              //   child: Stack(
              //     children: <Widget>[
              //       Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(25.0),
              //             image: DecorationImage(
              //                 image: AssetImage(photos[photoIndex]),
              //                 fit: BoxFit.cover)),
              //         height: 400.0,
              //         width: 350.0,
              //       ),
              //       Positioned(
              //         top: 375.0,
              //         left: 25.0,
              //         right: 25.0,
              //         child: SelectedPhoto(numberOfDots: photos.length, photoIndex: photoIndex),
              //       )
              //     ],
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     RaisedButton(
              //       child: Text('Next'),
              //       onPressed: _nextImage,
              //       elevation: 5.0,
              //       color: Colors.green,
              //     ),
              //     SizedBox(width: 10.0),
              //     RaisedButton(
              //       child: Text('Prev'),
              //       onPressed: _previousImage,
              //       elevation: 5.0,
              //       color: Colors.blue,
              //     )
              //   ],
              // ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[

                  Expanded(
                    child:Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 90,
                          width: 608,
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
                                    left: 0, top: 0, right: 0, bottom: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,                            children: <Widget>[
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
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   margin: EdgeInsets.only(
                                    //       left: 0, top: 18, right: 0, bottom: 0),
                                    //   child: Column(
                                    //     crossAxisAlignment: CrossAxisAlignment.start,
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
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
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
                                  left: 0, top: 0, right: 0, bottom: 0),
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
                                  // SizedBox(width: 8,),
                                  // Container(
                                  //   margin: EdgeInsets.only(
                                  //       left: 0, top: 18, right: 0, bottom: 0),
                                  //   child: Column(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: <Widget>[
                                  //       Text("Road",
                                  //           style: TextStyle(
                                  //             // fontWeight: FontWeight.bold,
                                  //               fontSize: 16,
                                  //               color: Color(0xff3d596d))
                                  //       ),
                                  //       Text("Constructions",
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
                  Expanded(
                    child: Stack(

                      children: <Widget>[
                        SizedBox(
                          height: 90,
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
                                        builder: (context) => Weatherapi(), maintainState: false));
                              },
                              child:Container(

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
                          height: 90,
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
                                  SizedBox(width: 28,),
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
                                    left: 0, top: 0, right: 0, bottom: 0),
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

//                   Expanded(child: Stack(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 90,
//                         width: 304,
//                         child:RaisedButton(
//                           color:Color(0xffbdcedb),// 0xff4f748e
//                           onPressed: () {
//                             Navigator.pop(context);
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Aboutus(), maintainState: false));
//                           },
//                           child:Container(
//                             margin: EdgeInsets.only(
//                                 left: 0, top: 10, right: 0, bottom: 0),
//                             child: Row(
//                               children: <Widget>[
//                                 Image.asset(
//                                     'Images/group.png',
//                                     color: Color(0xff3d596d),
//                                     height: 48, width: 48
// //                                  fit: BoxFit.fill,
//                                 ),
//                                 SizedBox(width: 25,),
//                                 Text("使用手冊",
//                                     style: TextStyle(
//                                       // fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                         color: Color(0xff3d596d))
//                                 ),
//                                 // SizedBox(width: 8,),
//                                 // Text("Manual",
//                                 //     style: TextStyle(
//                                 //       // fontWeight: FontWeight.bold,
//                                 //         fontSize: 16,
//                                 //
//                                 //         color: Color(0xff3d596d))
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
                ],
              )

            ],
          ),

        ),
      ),
    );
  }
}
// class SelectedPhoto extends StatelessWidget {
//
//   final int numberOfDots;
//   final int photoIndex;
//
//   SelectedPhoto({this.numberOfDots, this.photoIndex});
//
//   Widget _inactivePhoto() {
//     return new Container(
//         child: new Padding(
//           padding: const EdgeInsets.only(left: 3.0, right: 3.0),
//           child: Container(
//             height: 8.0,
//             width: 8.0,
//             decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(4.0)
//             ),
//           ),
//         )
//     );
//   }
//
//   Widget _activePhoto() {
//     return Container(
//       child: Padding(
//         padding: EdgeInsets.only(left: 3.0, right: 3.0),
//         child: Container(
//           height: 10.0,
//           width: 10.0,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey,
//                     spreadRadius: 0.0,
//                     blurRadius: 2.0
//                 )
//               ]
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildDots() {
//     List<Widget> dots = [];
//
//     for(int i = 0; i< numberOfDots; ++i) {
//       dots.add(
//           i == photoIndex ? _activePhoto(): _inactivePhoto()
//       );
//     }
//
//     return dots;
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return new Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: _buildDots(),
//       ),
//     );
//   }
// }
class AdsSliderCard extends StatelessWidget{
  final String sliderImage;
  AdsSliderCard({this.sliderImage});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
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