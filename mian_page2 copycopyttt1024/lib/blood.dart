import 'package:flutter/material.dart';

class blood extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bloodState();
  }
}

class bloodState extends State<blood> {
  bool _step = false;
  bool _umbrella = false;
  bool _flower = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
         children: <Widget>[
           Column(
             children: <Widget>[
               RaisedButton(
                 color: Colors.blue,
                 child: Text('百步蛇',style: TextStyle(fontSize: 16),),
                 onPressed: (){
                   setState(() {
                     _flower = false;
                     _umbrella = false;
                     _step = !_step;
                   });
                 },
               ),
               SizedBox(width: 5,),
               Container(
                 margin: EdgeInsets.only(
                     left: 35, top: 0, right: 0, bottom: 0),
                 child: Row(
                   children: <Widget>[
                     RaisedButton(
                       color: Colors.blue,
                       child: Text('雨傘節&飯匙倩蛇',style: TextStyle(fontSize: 16),),
                       onPressed: (){
                         setState(() {
                           _step = false;
                           _flower = false;
                           _umbrella = !_umbrella;
                         });
                       },
                     ),
                     SizedBox(width: 10,),
                     RaisedButton(
                       color: Colors.blue,
                       child: Text('龜殼花&赤尾鮐蛇',style: TextStyle(fontSize: 16),),
                       onPressed: (){
                         setState(() {
                           _step = false;
                           _umbrella = false;
                           _flower = !_flower;
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
                     Column(children:[
                       Text('南投縣仁愛鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2802341#102',
                         style: TextStyle(
                             fontSize: 15),
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣信義鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2791148#1148',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣魚池鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2895513#205',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣鹿谷鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2752002',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
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
                     Column(children:[
                       Text('南投縣仁愛鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2802341#102',
                         style: TextStyle(
                             fontSize: 15),
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣信義鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2791148#1148',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣魚池鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2895513#205',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣鹿谷鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2752002',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                     // Column(children:[
                     //   Icon(Icons.lightbulb_outline, size: iconSize,),
                     //   Text('Ideas')
                     // ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('埔里基督教醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2912151#1012',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Stack(
                         children: <Widget>[
                           Text('彰化基督教醫療財團法人'
                               '南投基督教醫院',
                               style: TextStyle(
                                   fontSize: 17)
                           ),
                           // Text(
                           //   ''
                           // )
                         ],
                       ),
                     ]),
                     Column(children:[
                       Text('049-2225595',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('臺中榮民總醫院埔里分院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2990833#3073',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('衛生福利部南投醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2231150#1253',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
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
                     Column(children:[
                       Text('竹山秀傳醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2624266#32140',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('佑民醫療社團法人佑民醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2358151#1123',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣中寮鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2691404',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣仁愛鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2802341#102',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣信義鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2791148#1148',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣魚池鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2895513#205',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('南投縣鹿谷鄉衛生所',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2752002',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('財團法人埔里基督教醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2912151#1012',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),

                   TableRow( children: [
                     Column(children:[
                       Text('臺中榮民總醫院埔里分院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2990833#3073',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                   TableRow( children: [
                     Column(children:[
                       Text('衛生福利部南投醫院',
                           style: TextStyle(
                               fontSize: 17)
                       ),
                     ]),
                     Column(children:[
                       Text('049-2231150#1253',
                           style: TextStyle(
                               fontSize: 15)
                       ),
                     ]),
                   ]),
                 ],
               ),
             ),
           )
         ],
        ),
      ),
    );
  }
}