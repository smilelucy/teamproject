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
    var url = "http://10.105.30.80/flutter_php/a2.php?data=" + nametxt;
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
      ListView(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: Color(0xff457B9D),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    width:300,
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
                    height: MediaQuery.of(context).size.height/1.5,
                    padding: EdgeInsets.only(top: 10),
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
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: data.map((item) => Text(item.loc,
                                      style: TextStyle(height: 1.5, color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold))).toList(),
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
                  // SizedBox(
                  //   height: 10,
                  // ),
                  //
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 10),
                  //   child:
                  //   Text(
                  //     nametxt != null ? nametxt : "",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 20.0,
                  //         fontWeight: FontWeight.w600
                  //     ),
                  //   ),
                  // ),
                ],
              ),
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

