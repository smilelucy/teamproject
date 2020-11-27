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
  String location;
  String hurt;
  String species;
  Item(this.location,this.hurt,this.species);
  // String name;
  // Item(this.name);
}
class MainPageState extends State<MainPage>
{
  List<Item> data = [];
  refreshData() async {
    var url = "http://192.168.0.185:8787/flutter_php/a2.php";
    // var url = "http://192.168.56.1:8787/flutter_php/construct.php?data=";
    var result = await http.get(url);
    setState(() {
      data.clear();
      var jsonItems = jsonDecode(result.body) as List<dynamic>;
      jsonItems.forEach((item){

        this.data.add(Item(
          item['location'] as String,
          item['hurt'] as String,
          item['species'] as String,
        ));
        // this.data.add(Item(
        //   item['name'] as String,
        // ));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                        RaisedButton(
                          onPressed: refreshData,
                          child: Text("顯示"),
                        ),
                        SizedBox(height: 20,),
                        RaisedButton(
                          // color: Colors.red,
                          child: Text("下一頁"),
                          onPressed: (){},
                        )
                      ],
                    ),
                  ),
                ),
                // PaginatedDataTable(
                //   header: Text('header'),
                //   columns: [
                //     DataColumn(label: Text('姓名')),
                //     DataColumn(label: Text('性别')),
                //     DataColumn(label: Text('年龄')),
                //   ],
                //   // source: MyDataTableSource(_data),
                // ),
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
                    children: data.map((item) => Text(item.hurt)).toList(),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    children: data.map((item) => Text(item.species)).toList(),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

}

class Road extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter PHP",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),

          // leading: Padding(
          //   padding: EdgeInsets.only(left: 12),
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
        body: MainPage(),
        drawer: Drawer(
          child: HomeMenu(),
        ),
      ),

    );
  }

}
