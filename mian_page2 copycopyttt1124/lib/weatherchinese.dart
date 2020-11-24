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
class Weatherchinese extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WeatherchineseState();
  }
}

class _WeatherchineseState extends State<Weatherchinese> {
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
  DateTime date = DateTime.now();
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
  // var current = 20;
  var timemod = DateTime.now().add(new Duration(hours: 0)).hour%3;
  double timetwo = DateTime.now().add(new Duration(hours: 0)).hour/3;
  var timefinal;
  String datatime;
  bool _day = true;
  bool _night = false;
  // var mid = (MediaQuery.of.size.width)/2,

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

  Future daynight() async {
    setState(() {
      if (current > 18) {
        _day = false;
        _night = true;
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
    this.daynight();
  }

  // Future<Null>_selectDate(BuildContext context) async{
  //   DateTime _datePicker = await showDatePicker(
  //       context: context,
  //       initialDate: date, // current date
  //       firstDate: DateTime(1947), // firstdate
  //       lastDate: DateTime(2030), // lastdate
  //       // textDirection: TextDirection.ltr, // 字靠左邊還是右邊
  //       // initialDatePickerMode: DatePickerMode.year, // 一開始進去先選擇是哪年的 // day or year mode
  //
  //       // color change and picked color change
  //       builder: (BuildContext context, Widget child) {
  //         return Theme(
  //           data: ThemeData(
  //             // primarySwatch: _buttonTextColor,
  //             primaryColor: Color(0xffe9c46a), // picked or select date color
  //             accentColor: Color(0xffe9c46a) , // picked or select date color
  //           ),
  //           child: child,
  //         );
  //       }
  //   );
  //
  //   if(_datePicker != null && _datePicker != date){
  //     setState(() {
  //       date = _datePicker;
  //       print(
  //         date.toString(),
  //       );
  //     });
  //   }
  // }


  changeText() {
    setState(() {
      nametxt = cityController.text;
      getWeather();
      // settime();
      print('当前时间是：$date'); // 当前时间是：2020-11-04 06:28:17.002837
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
      print('datatime,$datatime');
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
              // color: Colors.orange,

              // padding: EdgeInsets.only(left: 20,right: 20),
              margin: EdgeInsets.only(top: 2,left: 2,right: 2),
              width: (MediaQuery.of(context).size.width),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color.fromRGBO(0, 47, 122, 0.7)), //Colo
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white
              ),
              child: TextField(
                // cursorColor: Colors.orange,

                controller: cityController,
                decoration: InputDecoration(
                    hintText: '輸入鄉鎮名..ex埔里鎮',
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
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                // day ~~~~~~~~~~
                Visibility(
                  visible: _day,
                  child: Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Images/school.jpg')
                        )
                    ),
                    // color: Color(0xff457B9D),

                  ),
                ),
              // night~~~~~~~~
                Visibility(
                  visible: _night,
                  child: Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Images/tai.jpg')
                        )
                    ),
                    // color: Color(0xff457B9D),
                    // child: Column(
                    //   // mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[
                    //
                    //     // SizedBox(
                    //     //   height: 10,
                    //     // ),
                    //     //
                    //     // SizedBox(
                    //     //   height: 10,
                    //     // ),
                    //   ],
                    // ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(20.0),
                  // padding: EdgeInsets.only(left: 80,top: 50),
                  // padding: EdgeInsets.only(left: 155,top: 50),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        nametxt != null ? nametxt : "",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        temp != null ? temp.toString()+ "\u00B0" : "_°C",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        weather != null ? weather.toString()+ "\u00B0" : "找不到相符資料",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
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