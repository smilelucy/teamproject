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
  Item(this.record,this.loc);
}
class MainPageState extends State<MainPage>
{

  List<Item> data = [];
  // String location = data.key;
  refreshData() async {
    var dataStr = jsonEncode({
      "command": "get_items",
    });
    var url = "http://192.168.56.1/flutter_php/a2.php?data=" + dataStr;
    var result = await http.get(url);
    setState(() {
      data.clear();
      var jsonItems = jsonDecode(result.body) as List<dynamic>;
      jsonItems.forEach((item){

        this.data.add(Item(
          item['record'] as String,
          item['loc'] as String,
        ));
      });
    });

    // print('data,$data');
    // print(data['']);
    // print();
  // print('$Item[item['record']');
    // print('datatry,$data[$]');
    // print('Item,$, loc)(0, 0)');
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
                    child: RaisedButton(
                      onPressed: refreshData,
                      child: Text("顯示"),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(

                  child: Column(
                    children: data.map((item) => Text(item.loc)).toList(),
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
                    children: data.map((item) => Text(item.record,
                      style: TextStyle(height: 1.5),)).toList(),
                  ),
                ),
                SizedBox(width: 20,),
              ],
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

