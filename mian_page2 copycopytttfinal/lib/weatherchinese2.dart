import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'HomeMenu.dart';
import 'mainpage.dart';
import 'aboutus.dart';
import 'package:intl/intl.dart';
// import 'package:date_format/date_format.dart';
class Weatherchinese2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Weatherchinese2State();
  }
}

class _Weatherchinese2State extends State<Weatherchinese2> {
  TextEditingController cityController = new TextEditingController();
  static final DateTime nowtimefrom = DateTime.now().add(new Duration(hours: 8));
  static final DateTime nowtimeto = DateTime.now().add(new Duration(days: 7,hours: 8));
  static final DateFormat formatter = DateFormat('yyyy-MM-dd'+'T'+'HH:mm:ss');
  final String formattedfrom = formatter.format(nowtimefrom);
  final String formattedto = formatter.format(nowtimeto);
  var name;
  var nametxt;
  var temp;
  var timeFrom=formatter.format(nowtimefrom);
  var timeTo= formatter.format(nowtimeto);
  // ~~~~
  var today = new DateTime.now();
  DateTime now = DateTime.now();
  var last;
  var last2;
  String formattedDate = DateFormat('yyyy-MM-dd'+'T').format(DateTime.now());
  var Now = DateTime.now().add(new Duration(hours: 8));
  var Week = DateTime.now().add(new Duration(hours: 12));
  // ~~~~~
  String color;
  var weather;
  var maxfeellike;
  var humidity;
  var current = DateTime.now().add(new Duration(hours: 8)).hour;
  var timemod = DateTime.now().add(new Duration(hours: 8)).hour%3;
  double timetwo = DateTime.now().add(new Duration(hours: 8)).hour/3;
  var timefinal;
  String datatime;

  Future settime() async {
    setState(() {
      if(timemod > 2) {
        timefinal = timetwo.round();
        last = 3*(timefinal+1);
        last2 = last.toInt();
        datatime = '$formattedDate' + '$last2' + ":00:00" ;
      } else {
        timefinal = timetwo.round();
        last = 3*(timefinal) ;
        last2 = last.toInt();
        datatime = '$formattedDate' + '$last2' + ":00:00" ;
      }
    });
  }

  Future getWeather () async {

    http.Response response = await http.get("https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-021?Authorization=CWB-E80ACA1B-8FE5-4581-8DBD-A0CC9C2A4C02&format=JSON&locationName="+nametxt+"&dataTime="+datatime);
    var results = jsonDecode(response.body);

    setState(() {
      this.name = results['records']['locations'][0]['location'][0]['locationName'];
      this.temp = results['records']['locations'][0]['location'][0]['weatherElement'][3]['time'][0]['elementValue'][0]['value'];
      this.weather = results['records']['locations'][0]['location'][0]['weatherElement'][1]['time'][0]['elementValue'][0]['value'];
      this.maxfeellike = results['records']['locations'][0]['location'][0]['weatherElement'][2]['time'][0]['elementValue'][0]['value'];
      this.humidity = results['records']['locations'][0]['location'][0]['weatherElement'][4]['time'][0]['elementValue'][0]['value'];

    });
  }

  @override
  void initState() {
    super.initState();
    this.settime();
    this.getWeather();

  }

  // void time () {
  //   if(current % 3 > 2) {
  //     last = 3*(current/3+1);
  //   } else {
  //    last = 3*(current/3) ;
  //   }
  // }

  // void background() {
  //   if (current < 18) {
  //     color = 'f4a261';
  //   } else {
  //     color = '1d3557';
  //   }
  // }


  changeText() {
    setState(() {
      nametxt = cityController.text;
      getWeather();
      // settime();
      print('当前时间是：$today'); // 当前时间是：2020-11-04 06:28:17.002837
      print('format,$formattedDate'); // format,2020-11-04T06:23:09
      print('台灣now:,$Now');
      print('台灣7:,$Week');
      print('try,$formattedto');
      print('try,$formattedfrom');
      print('current,$current');
      print('last,$last');
      print('last2,$last2');
      print('datatime,$datatime');
      print('mod,$timemod');
      print('ss,$timefinal');
      // print('datetime,$formattedDate.HOUR_TZ');
      // print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
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
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,

              color: Color(0xff457B9D),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    width:300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                    ),
                    child: TextField(
                      controller: cityController,
                      decoration: InputDecoration(
                          hintText: 'Enter City',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                          suffixIcon: IconButton(
                            onPressed: () => changeText(),
                            // child: Text('Click Here To Change Text Widget Text Dynamically'),
                            // textColor: Colors.white,
                            color: Colors.black,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            icon: Icon(Icons.search),
                            // onPressed: => changecity(),
                            // iconSize: 30.0,
                          )
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   "目前地點",
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 14.0,
                  //       fontWeight: FontWeight.w600
                  //   ),
                  // ),
                  // Text(
                  //   name != null ? name : "Loading",
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 14.0,
                  //       fontWeight: FontWeight.w600
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:
                    Text(
                      nametxt != null ? nametxt : "",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(

                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      temp != null ? temp.toString()+ "\u00B0" : "_°C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      weather != null ? weather.toString()+ "\u00B0" : "找不到相符資料",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 10.0),
                  //   child:Text(
                  //     currently != null ? currently.toString() : "Loading" ,
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 14.0,
                  //         fontWeight: FontWeight.w600
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.mapPin),
                        title: Text("地點"),
                        trailing: Text(name != null ? name.toString() : "Loading"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.temperatureHigh),
                        title: Text("溫度"),
                        trailing: Text(temp != null ? temp.toString() + '°C' : "Loading"),
                      ),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.cloudSunRain),
                      title: Text(" 天氣現象"),
                      trailing: Text(weather != null ? weather.toString() : "Loading"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.solidSun),
                        title: Text("體感溫度"),
                        trailing: Text(maxfeellike != null ? maxfeellike.toString() + '°C' : "Loading"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.cloudRain),
                        title: Text("濕度"),
                        trailing: Text(humidity != null ? humidity.toString() + '%' : "Loading"),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 4),
                    //   child: ListTile(
                    //     leading: FaIcon(FontAwesomeIcons.cloudRain),
                    //     title: Text("時間"),
                    //     trailing: ,
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: HomeMenu(),
        ),
      ),
    );
  }
}