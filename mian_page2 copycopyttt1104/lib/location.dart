import 'package:flutter/material.dart';
import 'package:fluttertry5/road.dart';
import 'introduction.dart';
import 'HomeMenu.dart';
import 'aboutus.dart';
import 'mainpage.dart';
import 'calendar.dart';
import 'marquee..dart';
// import 'package:marquee/marquee.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

class Location extends StatefulWidget{
  @override
  _LocationState createState() => _LocationState();
}
// 毒蛇資訊(ThirdPage)
class _LocationState extends State<Location> {
  bool _nature = false;
//  bool _display = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',


      home:
      Scaffold(
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

          body:
          ListView(
              children: <Widget>[
                SingleChildScrollView(
                  child:Column(
                      children: <Widget>[

                        Wrap(
                          runSpacing: 10,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 304,
                              child:Container(

                                color:Color(0xffd7e3ea),
                                margin: EdgeInsets.only(
                                    left: 35, top: 10, right: 0, bottom: 0),
                                child: Text("熱門旅遊景點",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff3d596d)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            RaisedButton(

                              highlightColor: Color(0xffe9eff3),
//                                          disabledTextColor:Colors.red,
                              onPressed: () {
                                setState(() {
                                  _nature = !_nature;
                                });
                              },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                              child:Text('更多',style:TextStyle(color:Colors.black,fontSize: 18),),
                              shape: CircleBorder(),
                              color:Colors.white,
                            ),
                            RaisedButton(

                              highlightColor: Color(0xffe9eff3),
//                                          disabledTextColor:Colors.red,
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Calendar(), maintainState: false));
                                });
                              },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                              child:Text('日曆',style:TextStyle(color:Colors.black,fontSize: 18),),
                              shape: CircleBorder(),
                              color:Colors.white,
                            ),
                            RaisedButton(

                              highlightColor: Color(0xffe9eff3),
//                                          disabledTextColor:Colors.red,
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyApp(), maintainState: false));
                                });
                              },
//                child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
                              child:Text('跑馬燈',style:TextStyle(color:Colors.black,fontSize: 18),),
                              shape: CircleBorder(),
                              color:Colors.white,
                            ),
                            Visibility(
                              visible: _nature,
                              child: SizedBox(
                                height: 100,
                                width: 350,
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {

                                     // Navigator.of(context).pushNamed("First");
                          Navigator.pop(context);
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Introone(), maintainState: false));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 0, top: 10, right: 0, bottom: 10),
                                    // color: Colors.red,
                                    height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              'Images/school.jpg',
                                              // color: Color(0xff3d596d),
                                              height: 100,
//                                  fit: BoxFit.fill,
                                            ),
                                            SizedBox(width: 25,),
                                            Text("埔里 國立暨南\n"
                                                "         國際大學",
                                                style: TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 20,

                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _nature,
                              child: SizedBox(
                                height: 100,
                                width: 350,
                                child: RaisedButton(
                                  color:Color(0xffd7e3ba),// 0xffa8bece
                                  onPressed: () {

                                     // Navigator.of(context).pushNamed("First");
                          // Navigator.pop(context);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Introone(), maintainState: false));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 0, top: 10, right: 0, bottom: 10),
                                    // color: Colors.red,
                                    height: 100,
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              'Images/monster.jpg',
                                              // color: Color(0xff3d596d),
                                              height: 150,
//                                  fit: BoxFit.fill,
                                            ),
                                            SizedBox(width: 28,),
                                            Text("鹿谷 溪頭妖怪村",
                                                style: TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 20,

                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ]
                  ),

                ),

              ]
          ),

        drawer: Drawer(
          child: HomeMenu(),
        ),
      ),
    );
  }
}

