import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'HomeMenu.dart';
import 'mainpage.dart';
import 'aboutus.dart';

class Weatherapi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WeatherapiState();
  }
}

class _WeatherapiState extends State<Weatherapi> {
  TextEditingController cityController = new TextEditingController();
  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;
  var name="Taichung";
  var sunrise;
  var feelslike;
  // var rain;
  // var city="Taichung";

  Future getWeather () async {
    http.Response response = await http.get("http://api.openweathermap.org/data/2.5/weather?q="+name+"&appid=a21e74129472c2cb55ebcfa88020e014&lang=zh_tw&units=metric");
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windSpeed = results['wind']['speed'];
      this.name = results['name'];
      this.sunrise = results['sys']['sunrise'];
      this.feelslike = results['main']['feels_like'];
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
      name = cityController.text;
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
                    Text(
                      "Current Weather in ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child:
                      Text(
                           name != null ? name : "Loading",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Text(
                      temp != null ? temp.toString()+ "\u00B0" : "Loading",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child:Text(
                       currently != null ? currently.toString() : "Loading" ,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                        title: Text("Temperature"),
                        trailing: Text(temp != null ? temp.toString() + "\u00B0" : "Loading"),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                        title: Text("feels_like"),
                        trailing: Text(feelslike != null ? feelslike.toString() : "Loading"),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.cloud),
                        title: Text("Weather"),
                        trailing: Text(description != null ? description.toString() : "Loading"),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.sun),
                        title: Text("Humidity"),
                        trailing: Text(humidity != null ? humidity.toString() : "Loading"),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.wind),
                        title: Text("Wind Speed"),
                        trailing: Text(windSpeed != null ? windSpeed.toString() : "Loading"),
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