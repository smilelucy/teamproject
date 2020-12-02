import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'HomeMenu.dart';
// import 'package:fluttertry5/introduction_midtai.dart';
// import 'introduction.dart';
// import 'introduction_monster.dart';
// import 'introduction_chickenstory.dart';
// import 'introduction_qinjingsky.dart';
// import 'introduction_rainbowbridge.dart';
// import 'introduction_naturalhistorymuseum.dart';
// import 'introduction_midtai.dart';
// import 'introduction_wangartmuseum.dart';



class Location3 extends StatefulWidget{
  @override
  _Location3State createState() => _Location3State();
}
// 毒蛇資訊(ThirdPage)
class _Location3State extends State<Location3> {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  String name;
  bool  _culture = true; // 文化類
  bool  _ecology = false; // 生態類
  bool  _historic = false; // 古蹟類
  bool  _temple = false; // 廟宇類
  bool  _art = false; // 藝術類
  bool  _snack = false; // 小吃類
  bool  _nationalPark = false; // 國家公園類
  bool  _scenicArea = false; // 國家風景區類
  bool  _agriculture = false; // 休閒農業類
  bool  _hotSpring = false; // 溫泉類
  bool  _nature = false; // 自然風景類
  bool  _relaxation = false; // 休憩類
  bool  _workOut = false; // 運動健身類
  bool  _others = false; // 其他類
  bool color1 = true;
  bool color2 = false;
  bool color3 = false;
  bool color4 = false;
  bool color5 = false;
  bool color6 = false;
  bool color7 = false;
  bool color8 = false;
  bool color9 = false;
  bool color10 = false;
  bool color11 = false;
  bool color12 = false;
  bool color13 = false;
  bool color14 = false;
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
    // ListView(
    //     children: <Widget>[
          Column(
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
             Container(
               height: 100,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       RaisedButton(
                         color: color1 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                           "文化類",
                           style: TextStyle(
                             color: color1 ? Color(0xfff3f3f3) : Color(0xff484848),
                           ),
                         ),
                         onPressed: (){
                           setState(() {
                             _ecology = false;
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = ! _culture;
                             color1 = !color1;
                             color2 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                       RaisedButton(
                         color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                         child: Text(
                             "生態類",
                             style: TextStyle(
                               color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),)
                         ),
                         onPressed: (){
                           setState(() {
                             _historic = false;
                             _temple = false;
                             _art = false;
                             _snack = false;
                             _nationalPark = false;
                             _scenicArea = false;
                             _agriculture = false;
                             _hotSpring = false;
                             _nature = false;
                             _relaxation = false;
                             _workOut = false;
                             _others = false;
                             _culture = false;
                             _ecology = ! _ecology;
                             color2 = !color2;
                             color1 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                             color6 = false;
                             color7 = false;
                             color8 = false;
                             color9 = false;
                             color10 = false;
                           });
                         },
                       ),
                     ],
                   ),
                 ],
               ),
             ),

           ],
          ),
        // ]
    // ),
          drawer: Drawer(
            child: HomeMenu(),
          ),
          /**drawer: Drawer(
              child: HomeMenu(),
              ),**/
        ),
    );
  }
}