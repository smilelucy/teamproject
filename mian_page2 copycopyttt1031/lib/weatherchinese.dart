import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'HomeMenu.dart';
import 'mainpage.dart';
import 'aboutus.dart';

class Weatherchinese extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WeatherchineseState();
  }
}

class _WeatherchineseState extends State<Weatherchinese> {
  TextEditingController cityController = new TextEditingController();
  var name;
  var nametxt;
  var temp;
  var timeFrom="2020-10-31T18:00:00";
  var timeTo="2020-10-31T19:00:00";
  var weather;
  var maxfeellike;
  var humidity;
  // var description;
  // var currently;

  // var windSpeed;
  // var name="Taichung";
  // var sunrise;
  // var feelslike;
  // var rain;
  // var city="Taichung";

  Future getWeather () async {
    http.Response response = await http.get("https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-023?Authorization=CWB-E80ACA1B-8FE5-4581-8DBD-A0CC9C2A4C02&format=JSON&locationName="+nametxt+"&elementName=&timeFrom="+timeFrom+"&timeTo="+timeTo);
    var results = jsonDecode(response.body);
    setState(() {
      this.name = results['records']['locations'][0]['location'][0]['locationName'];
      this.temp = results['records']['locations'][0]['location'][0]['weatherElement'][1]['time'][0]['elementValue'][0]['value'];
      this.weather = results['records']['locations'][0]['location'][0]['weatherElement'][6]['time'][0]['elementValue'][0]['value'];
      this.maxfeellike = results['records']['locations'][0]['location'][0]['weatherElement'][5]['time'][0]['elementValue'][0]['value'];
      this.humidity = results['records']['locations'][0]['location'][0]['weatherElement'][2]['time'][0]['elementValue'][0]['value'];
      // this.description = results['weather'][0]['description'];
      // this.currently = results['weather'][0]['main'];
      // this.humidity = results['main']['humidity'];
      // this.windSpeed = results['wind']['speed'];
      // this.name = results['name'];
      // this.sunrise = results['sys']['sunrise'];
      // this.feelslike = results['main']['feels_like'];
      // this.rain = results['rain']['1h'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }
  // changecity(){
  //   setState(() {
  //     city = "Taipei";
  //   });
  // }


  changeText() {
    setState(() {
      nametxt = cityController.text;
      getWeather();
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
                        trailing: Text(temp != null ? temp.toString() : "Loading"),
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
                        title: Text("最高體感溫度"),
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