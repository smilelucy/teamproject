import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertry5/secondddd.dart';
import 'snakemap.dart';

class blood extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bloodState();
  }
}

class bloodState extends State<blood> {

  bool _step = true;
  bool _umbrella = false;
  bool _flower = false;
  bool _glass = false;
  bool _green = false;
  bool color1 = true;
  bool color2 = false;
  bool color3 = false;
  bool color4 = false;
  bool color5 = false;
  // bool server1Selected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
           children: <Widget>[
             Column(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(
                       left: 50, top: 0, right: 0, bottom: 0),
                   child: Row(
                     children: <Widget>[
                       RaisedButton(
                         // color: Color(0xffbcecf6),
                         color: color1 ? Color(0xffFDD4D4) : Color(0xffbcecf6),
                         child: Text('百步蛇',style: TextStyle(fontSize: 16),),
                         onPressed: (){
                           setState(() {
                             _flower = false;
                             _umbrella = false;
                             _glass = false;
                             _green = false;
                             _step = !_step;
                             color1 = !color1;
                             color2 = false;
                             color3 = false;
                             color4 = false;
                             color5 = false;
                           });
                         },
                       ),
                       SizedBox(width: 10,),
                       RaisedButton(
                         color: color4 ? Color(0xffFDD4D4) : Color(0xffbcecf6),
                         child: Text('雨傘節',style: TextStyle(fontSize: 16),),
                         onPressed: (){
                           setState(() {
                             _step = false;
                             _flower = false;
                             _glass = false;
                             _green = false;
                             _umbrella = !_umbrella;
                             color1 =  false;
                             color3 = false;
                             color2 = false;
                             color5 = false;
                             color4 = !color4;
                           });
                         },
                       ),
                       SizedBox(width: 10,),
                       RaisedButton(
                         color: color5 ? Color(0xffFDD4D4) : Color(0xffbcecf6),
                         child: Text('龜殼花',style: TextStyle(fontSize: 16),),
                         onPressed: (){
                           setState(() {
                             _step = false;
                             _umbrella = false;
                             _glass = false;
                             _green = false;
                             _flower = !_flower;
                             color1 =  false;
                             color3 = false;
                             color2 = false;
                             color4 = false;
                             color5 = !color5;
                           });
                         },
                       ),
                     ],
                   ),
                 ),

                 SizedBox(width: 5,),
                 Container(
                   margin: EdgeInsets.only(
                       left: 20, top: 0, right: 0, bottom: 0),
                   child: Row(
                     children: <Widget>[

                       SizedBox(width: 10,),
                       RaisedButton(
                         color: color2 ? Color(0xffFDD4D4) : Color(0xffbcecf6),
                         child: Text('飯匙倩(眼鏡蛇)',style: TextStyle(fontSize: 16),),
                         onPressed: (){
                           setState(() {
                             _step = false;
                             _flower = false;
                             _umbrella = false;
                            _glass = !_glass;
                            _green = false;
                             color1 =  false;
                             color3 = false;
                             color2 = !color2;
                             color4 = false;
                             color5 =false;
                           });
                         },
                       ),
                       SizedBox(width: 10,),
                       RaisedButton(
                         color: color3 ? Color(0xffFDD4D4) : Color(0xffbcecf6),
                         child: Text('赤尾鮐(赤尾青竹絲)',style: TextStyle(fontSize: 16),),
                         onPressed: (){
                           setState(() {
                             _step = false;
                             _umbrella = false;
                             _glass = false;
                             _green = !_green;
                             _flower = false;
                             color2 = false;
                             color1 =  false;
                             color3 = !color3;
                             color4 = false;
                             color5 = false;
                           });
                         },
                       ),
                     ],
                   ),
                 ),

               ],
             ),


             Visibility(
               visible: _step,
               child: Container(
                 margin: EdgeInsets.all(10),
                 child: Table(
                   border: TableBorder.all(),
                   children: [
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(

                           onTap: (){},
                           // color: Colors.white,
                           child: Column(children:[
                             Text('南投縣仁愛鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2802341#102',
                             style: TextStyle(
                                 fontSize: 15),
                           ),
                         ]),
                       ),

                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),

                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           // color: Color(0xfffdd4d4),
                           child: Column(children:[
                             Text('南投縣信義鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(
                             // mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children:[
                           Text('049-2791148#1148',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           // color: Color(0xfffdd4d4),
                           child: Column(children:[
                             Text('南投縣魚池鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(
                             // mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.center,
                             children:[
                           Text('049-2895513#205',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           // color: Color(0xfffdd4d4),
                           child: Column(children:[
                             Text('南投縣鹿谷鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2752002',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                   ],
                 ),
               ),
             ),

             Visibility(
               visible: _umbrella,
               child: Container(
                 margin: EdgeInsets.all(10),
                 child: Table(
                   border: TableBorder.all(),
                   children: [
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣仁愛鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2802341#102',
                             style: TextStyle(
                                 fontSize: 15),
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣信義鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2791148#1148',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣魚池鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2895513#205',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣鹿谷鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2752002',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('埔里基督教醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2912151#1012',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Stack(
                               children: <Widget>[
                                 Text(
                                     '彰基南投分院',
                                     style: TextStyle(
                                         fontSize: 17,color: Colors.blue )
                                 ),
                                 // Text(
                                 //   ''
                                 // )
                               ],
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2225595',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('臺中榮總埔里分院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2990833#3073',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('衛生福利部南投醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2231150#1253',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                   ],
                 ),
               ),
             ),
             Visibility(
               visible: _glass,
               child: Container(
                 margin: EdgeInsets.all(10),
                 child: Table(
                   border: TableBorder.all(),
                   children: [
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣仁愛鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2802341#102',
                             style: TextStyle(
                                 fontSize: 15),
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣信義鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2791148#1148',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣魚池鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2895513#205',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣鹿谷鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2752002',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                       // Column(children:[
                       //   Icon(Icons.lightbulb_outline, size: iconSize,),
                       //   Text('Ideas')
                       // ]),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('埔里基督教醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2912151#1012',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Stack(
                               children: <Widget>[
                                 Text(
                                     '彰基南投分院',
                                     style: TextStyle(
                                         fontSize: 17,color: Colors.blue )
                                 ),
                                 // Text(
                                 //   ''
                                 // )
                               ],
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2225595',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('臺中榮總埔里分院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2990833#3073',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('衛生福利部南投醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2231150#1253',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                   ],
                 ),
               ),
             ),
             Visibility(
               visible: _flower,
               child: Container(
                 margin: EdgeInsets.all(10),
                 child: Table(
                   border: TableBorder.all(),
                   children: [
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('竹山秀傳醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2624266#32140',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('佑民醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2358151#1123',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣中寮鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2691404',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣仁愛鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2802341#102',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣信義鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2791148#1148',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣魚池鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2895513#205',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣鹿谷鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2752002',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('埔里基督教醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2912151#1012',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('臺中榮總埔里分院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2990833#3073',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('衛生福利部南投醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2231150#1253',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),


                   ],
                 ),
               ),
             ),
             Visibility(
               visible: _green,
               child: Container(
                 margin: EdgeInsets.all(10),
                 child: Table(
                   border: TableBorder.all(),
                   children: [
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('竹山秀傳醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2624266#32140',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('佑民醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2358151#1123',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣中寮鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2691404',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣仁愛鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2802341#102',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣信義鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2791148#1148',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣魚池鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2895513#205',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('南投縣鹿谷鄉衛生所',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2752002',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('埔里基督教醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2912151#1012',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('臺中榮總埔里分院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2990833#3073',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),
                     TableRow( children: [
                       Container(
                         padding: EdgeInsets.only(top:10,bottom: 10),
                         child: GestureDetector(
                           onTap: (){},
                           child: Column(children:[
                             Text('衛生福利部南投醫院',
                                 style: TextStyle(
                                     fontSize: 17,color: Colors.blue )
                             ),
                           ]),
                         ),
                       ),
                       Container(
                         color: Color(0xfffdf2c5),
                         padding: EdgeInsets.only(top:15,bottom: 10),
                         child: Column(children:[
                           Text('049-2231150#1253',
                               style: TextStyle(
                                   fontSize: 15)
                           ),
                         ]),
                       ),
                     ]),


                   ],
                 ),
               ),
             ),
             Container(
               alignment: Alignment.bottomRight,
               child: FloatingActionButton(

                 heroTag: "one",
                 child: IconButton(
                   // color: Colors.black,
                   icon: ImageIcon(AssetImage("Images/maplogo.png")),
                   onPressed: (){
                     Navigator.pop(context);
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => Snakemap(), maintainState: false));
                   },
                 ),

                 backgroundColor: Color(0xff0D2A66),
                 // _onAddMarkerButtonPressed, Icons.add_location
               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}