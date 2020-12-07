import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'HomeMenu.dart';
import 'mainpage.dart';
import 'aboutus.dart';

class Pie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Chart(),
        ),
      ),
      drawer: Drawer(
        child: HomeMenu(),
      ),
    );
  }
}

class Chart extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _ChartState();
  }
}

class _ChartState extends State<Chart> {

  // List<Item> data = [];
  // refreshData() async {
  //   var dataStr = jsonEncode({
  //     "command": "get_items",
  //   });
  //   var url = "http://192.168.56.1/flutter_php/a2.php?data=" + dataStr;
  //   var result = await http.get(url);
  //   setState(() {
  //     data.clear();
  //     var jsonItems = jsonDecode(result.body) as List<dynamic>;
  //     jsonItems.forEach((item){
  //
  //       this.data.add(Item(
  //         item['record'] as String,
  //         item['loc'] as String,
  //       ));
  //     });
  //   });
  // }

  List<PieChartSectionData> _sections = List<PieChartSectionData>();

  @override
  void initState() {
    super.initState();

    PieChartSectionData _item1 = PieChartSectionData(
        color: Colors.blueAccent,
        value: 40,
        title: 'Food',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white,fontSize: 24)
    );
    PieChartSectionData _item2 = PieChartSectionData(
        color: Colors.redAccent,
        value: 20,
        title: 'Rent',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white,fontSize: 24)
    );
    PieChartSectionData _item3 = PieChartSectionData(
        color: Colors.amberAccent,
        value: 30,
        title: 'Tech',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white,fontSize: 24)
    );
    PieChartSectionData _item4 = PieChartSectionData(
        color: Colors.orangeAccent,
        value: 10,
        title: 'Travel',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white,fontSize: 24)
    );
    _sections = [_item1,_item2,_item3,_item4];
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 0, top: 10, right: 0, bottom: 0),
          child: AspectRatio(
            aspectRatio: 1,
            child: FlChart(
              chart: PieChart(
                PieChartData(
                  sections: _sections,
                  borderData: FlBorderData(
                      show: false
                  ),
                  centerSpaceRadius: 40,
                  sectionsSpace: 0,
                ),
              ),
            ),
          ),
        ),
//         ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             SingleChildScrollView(
//
//               child: Row(
// //              crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Positioned(
//                     top: 200,
//                     child: Container(
//                       child: RaisedButton(
//                         onPressed: refreshData,
//                         child: Text("顯示"),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 20,),
//                   Container(
//
//                     child: Column(
//                       children: data.map((item) => Text(item.loc)).toList(),
//                     ),
//                   ),
//                   SizedBox(width: 20,),
//                   Container(
//                     width: 5,
//                     height: 300,
//                     //color: Colors.black,
//                   ),
//                   SizedBox(width: 20,),
//                   Container(
//                     child: Column(
//                       children: data.map((item) => Text(item.record,
//                         style: TextStyle(height: 1.5),)).toList(),
//                     ),
//                   ),
//                   SizedBox(width: 20,),
//                 ],
//               ),
//             ),
//           ],
//         ),
      ],
    );
  }
}

// class MainPage extends StatefulWidget
// {
//   @override
//   State<StatefulWidget> createState() {
//     return MainPageState();
//   }
// }
// class Item
// {
//   String record;
//   String loc;
//   Item(this.record,this.loc);
// }
// class MainPageState extends State<MainPage>
// {
//   List<Item> data = [];
//   refreshData() async {
//     var dataStr = jsonEncode({
//       "command": "get_items",
//     });
//     var url = "http://192.168.56.1/flutter_php/a2.php?data=" + dataStr;
//     var result = await http.get(url);
//     setState(() {
//       data.clear();
//       var jsonItems = jsonDecode(result.body) as List<dynamic>;
//       jsonItems.forEach((item){
//
//         this.data.add(Item(
//           item['record'] as String,
//           item['loc'] as String,
//         ));
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Color(0xff65a2cd),
//       //   // title: Text("車禍分佈"),
//       //   actions: <Widget>[
//       //     IconButton(
//       //       // icon: Icon(Icons.settings),
//       //       icon: ImageIcon(AssetImage("Images/homepage.png")),
//       //       onPressed: () {
//       //         Navigator.pop(context);
//       //         Navigator.push(
//       //             context,
//       //             MaterialPageRoute(
//       //                 builder: (context) => Mainpage(), maintainState: false));
//       //       },
//       //     ),
//       //     IconButton(
//       //       icon: Icon(Icons.help),
//       //       onPressed: () {
//       //         Navigator.pop(context);
//       //         Navigator.push(
//       //             context,
//       //             MaterialPageRoute(
//       //                 builder: (context) => Aboutus(), maintainState: false));
//       //       },
//       //     ),
//       //
//       //   ],
//       // ),
//       body: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           SingleChildScrollView(
//
//             child: Row(
// //              crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Positioned(
//                   top: 200,
//                   child: Container(
//                     child: RaisedButton(
//                       onPressed: refreshData,
//                       child: Text("顯示"),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20,),
//                 Container(
//
//                   child: Column(
//                     children: data.map((item) => Text(item.loc)).toList(),
//                   ),
//                 ),
//                 // SizedBox(width: 10,),
//                 // Container(
//                 //   width: 5,
//                 //   height: 300,
//                 //   //color: Colors.black,
//                 // ),
//                 SizedBox(width: 20,),
//                 Container(
//                   child: Column(
//                     children: data.map((item) => Text(item.record,
//                       style: TextStyle(height: 1.5),)).toList(),
//                   ),
//                 ),
//                 // SizedBox(width: 20,),
//               ],
//             ),
//           ),
//         ],
//       ),
//
//     );
//   }
//
// }
//
// class Road1 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter PHP",
//       home: MainPage(),
//
//     );
//
//   }
//
// }