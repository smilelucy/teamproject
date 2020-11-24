// import 'package:flutter/material.dart';
// class FirstPage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//
//       home: Scaffold(
//           body:
//           ListView(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Expanded(
//                     child:
//                     Container(
//                       alignment: Alignment.center,
//                       color: Color(0xff008EA7),
//                       child: Text('蛇種',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
//                       margin: EdgeInsets.only(
//                           left: 0, top: 0, right: 0, bottom: 0),
//                       height: 70.0,
//                     )
//                     ),
//                     Expanded(child: Container(
//                       alignment: Alignment.center,
//                       color: Color(0xff00AFB9),
//                       child: Text('單位名稱',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
//                       margin: EdgeInsets.only(
//                           left: 0, top: 0, right: 0, bottom: 0),
//                       height: 70.0,
//                     )),
//                     Expanded(child: Container(
//                       alignment: Alignment.center,
//                       color: Color(0xffFDFCDC),
//                       child: Text('連絡電話',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
//                       margin: EdgeInsets.only(
//                           left: 0, top: 0, right: 0, bottom: 0),
//                       height: 70.0,
//                     )),
//                   ],
//                 ),
//               ]
//           )
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MainPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}
class Item
{
  String serum;
  String location;
  String telephone;
  Item(this.serum,this.location,this.telephone);
}
class MainPageState extends State<MainPage>
{
  List<Item> data = [];
  refreshData() async {
    var url = "http://192.168.50.56/flutter_php/blood.php?data=";
    var result = await http.get(url);
    setState(() {
      data.clear();
      var jsonItems = jsonDecode(result.body) as List<dynamic>;
      jsonItems.forEach((item){

        this.data.add(Item(
          item['serum'] as String,
          item['location'] as String,
          item['telephone'] as String,
        ));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("血清列表"),
      // ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SingleChildScrollView(

            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Positioned(
                  top: 200,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        // refreshData(),
                        RaisedButton(
                          onPressed: refreshData,
                          child: Text("顯示"),
                        ),
//                        SizedBox(height: 20,),
//                        RaisedButton(
//                          onPressed: (){
//                            Navigator.pop(context);
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => (Try()), maintainState: false));
//                          },
//                          child: Text("TRY"),
//                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(

                  child: Column(
                    children: data.map((item) => Text(item.serum)).toList(),
                  ),
                ),
                SizedBox(width: 20,),
                Container(

                  child: Column(
                    children: data.map((item) => Text(item.location)).toList(),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 5,
                  height: 300,
                  //color: Colors.black,
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    children: data.map((item) => Text(item.telephone,
                      style: TextStyle(height: 1.5),)).toList(),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter PHP",
      home: MainPage(),
    );
  }

}

