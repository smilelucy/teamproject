import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'HomeMenu.dart';
import 'mainpage.dart';
import 'aboutus.dart';


class MainPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}
class Item
{
  String record;
  String loc;
  String rate;
  Item(this.record,this.loc, this.rate);
}
class MainPageState extends State<MainPage>
{

  bool color1 = true;
  bool color2 = false;
  bool color3 = false;
  bool color4  = false;
  var month;
  var nametxt;
  changeText() {
    setState(() {
      nametxt = cityController.text;
      print('location,$nametxt');
    });

  }
  TextEditingController cityController = new TextEditingController();
  List<Item> data = [];
  refreshData() async {
    var dataStr = jsonEncode({
      "command": nametxt,
    });
    var dataStr2 = jsonEncode({
      "command": month,
    });
    // var url = "http://192.168.56.1/flutter_php/a2.php?time=" + month;
    var url = "http://192.168.56.1/flutter_php/a2.php?data=" + nametxt ;
    var result = await http.get(url);
    setState(() {
      data.clear();
      var jsonItems = jsonDecode(result.body) as List<dynamic>;
      jsonItems.forEach((item){

        this.data.add(Item(
          item['record'] as String,
          item['loc'] as String,
          item['rate'] as String,
        ));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff65a2cd),
        // title: Text("車禍分佈"),
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
      Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  // color: Color(0xff457B9D),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        padding: EdgeInsets.only(left: 10,right: 10),
                        width: MediaQuery.of(context).size.width,
                        // height: 50,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff457B9D),
                        ),
                        child: TextField(

                          controller: cityController,
                          decoration: InputDecoration(
                              hintText: 'Enter City',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  changeText();
                                  refreshData();

                                },
                                // child: Text('Click Here To Change Text Widget Text Dynamically'),
                                // textColor: Colors.white,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                icon: Icon(Icons.search),
                                // onPressed: => changecity(),
                                // iconSize: 30.0,
                              )
                          ),

                        ),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      Container(
                        height: MediaQuery.of(context).size.height/1.3,
                        padding: EdgeInsets.only(top: 65),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SingleChildScrollView(

                              child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Positioned(
                                  //   top: 200,
                                  //   child: Container(
                                  //     child: RaisedButton(
                                  //       onPressed: refreshData,
                                  //       child: Text("顯示"),
                                  //     ),
                                  //   ),
                                  // ),
                                  // SizedBox(width: 25,),
                                  Container(
                                    //color: Color(0xfffffdd0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: data.map((item) => Text(item.loc,
                                          style: TextStyle(height: 1.5, color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold,))).toList(),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // Container(
                                  //   width: 0,
                                  //   height: 300,
                                  //   //color: Colors.black,
                                  // ),
                                  SizedBox(width: 10,),
                                  Container(
                                    child: Column(
                                      children: data.map((item) => Text(item.record,
                                        style: TextStyle(height: 1.5, color: Colors.black87, fontSize: 16),)).toList(),
                                    ),
                                  ),
                                  // SizedBox(width: 25,),
                                  // Container(
                                  //   child: Column(
                                  //     children: data.map((item) => Text("比例: "+item.rate,
                                  //       style: TextStyle(height: 1.5, color: Colors.red, fontSize: 16),)).toList(),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
          Container(
            height: 110,
            padding: EdgeInsets.only(top: 68,left: 10,right: 10),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  RaisedButton(
                    color: color1 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                    child: Text(
                      "1 - 3 月",
                      style: TextStyle(
                        color: color1 ? Color(0xfff3f3f3) : Color(0xff484848),
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        month = 1;
                        color1 = !color1;
                        color2 = false;
                        color3 = false;
                        color4 = false;
                      });
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: RaisedButton(
                      color: color2 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                      child: Text(
                        "4 - 6 月",
                        style: TextStyle(
                          color: color2 ? Color(0xfff3f3f3) : Color(0xff484848),
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          month = 4;
                          color2 = !color2;
                          color1 = false;
                          color3 = false;
                          color4 = false;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: RaisedButton(
                      color: color3 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                      child: Text(
                        "7 - 9 月",
                        style: TextStyle(
                          color: color3 ? Color(0xfff3f3f3) : Color(0xff484848),
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          month = 7;
                          color3 = !color3;
                          color1 = false;
                          color2 = false;
                          color4 = false;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: RaisedButton(
                      color: color4 ? Color(0xff0a89ff) : Color(0xfffdecf2),
                      child: Text(
                        "10 - 12 月",
                        style: TextStyle(
                          color: color4 ? Color(0xfff3f3f3) : Color(0xff484848),
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          month = 10;
                          color4 = !color4;
                          color1 = false;
                          color2 = false;
                          color3 = false;
                        });
                      },
                    ),
                  )
                ]
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: HomeMenu(),
      ),
    );
  }

}

class Road1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter PHP",
      home: MainPage(),

    );

  }

}

