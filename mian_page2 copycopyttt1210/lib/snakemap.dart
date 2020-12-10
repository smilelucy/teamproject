import 'package:flutter/material.dart';
import 'package:fluttertry5/blood.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';
import 'mainpage.dart';
import 'aboutus.dart';
import 'HomeMenu.dart';
import 'blood.dart';
// void main() {
//   runApp(MyApp());
// }

class Snakemap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapView(),
    );
  }
}
class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class GreatCircleDistance {
  final double R = 6371000;  // radius of Earth, in meters
  double latitude1, longitude1;
  double latitude2, longitude2;

  GreatCircleDistance({this.latitude1, this.latitude2, this.longitude1, this.longitude2});

  double distance() {
    double phi1 = this.latitude1 * pi / 180;  // φ1
    double phi2 = this.latitude2 * pi / 180;  // φ2
    var deltaPhi = (this.latitude2 - this.latitude1) * pi / 180;  // Δφ
    var deltaLambda = (this.longitude2 - this.longitude1) * pi / 180;  // Δλ

    var a = sin(deltaPhi / 2) * sin(deltaPhi / 2) +
        cos(phi1) * cos(phi2) * sin(deltaLambda / 2) * sin(deltaLambda / 2);
    var c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return R * c;
  }
}

class _MapViewState extends State<MapView> {
  BitmapDescriptor hospital, flag;


  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;

  final Geolocator _geolocator = Geolocator();

  Position _currentPosition;

  final startAddressController = TextEditingController();
  final destinationAddressController = TextEditingController();


  String _destinationAddress = '';

  Set<Marker> markers = {};

  var setcolor = [false,false,false];

  var dis = 100000000.0;
  var nla,nlo,nm;

  final _scaffoldKey = GlobalKey<ScaffoldState>();


  // Method for retrieving the current location
  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        _currentPosition = position;
        print('CURRENT POS: $_currentPosition');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 10.0,
            ),
          ),
        );
      });
      //await _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

  // Method for retrieving the address
  _getAddress(List data, List data_la, List data_lo, BitmapDescriptor markimg) async {
    dis = 100000000.0;

    try {
      List<Placemark> p = await _geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);
      nla = 0;
      nlo = 0;
      markers.add(
          Marker(
            markerId: MarkerId('GPS'),
            position: LatLng(_currentPosition.latitude,_currentPosition.longitude),
            infoWindow: InfoWindow(
                title: "Your location"
            ),
            //icon: flag,
          )
      );



      for(var i = 0; i < data.length; i++) {
        var cac = GreatCircleDistance(latitude1: _currentPosition.latitude,
            longitude1: _currentPosition.longitude,
            latitude2: data_la[i],
            longitude2: data_lo[i]).distance();
        if (cac < dis){
          dis = cac;
          nla = data_la[i];
          nlo = data_lo[i];
          print(data_la[i]);
          print(nlo);
          nm = data[i];
        }
        Marker destinationMarker = Marker(
          markerId: MarkerId('${data[i]}'),
          position: LatLng(
            data_la[i],
            data_lo[i],
          ),
          infoWindow: InfoWindow(
            title: data[i],
            snippet: _destinationAddress,
          ),
          icon: markimg,
        );
        markers.add(destinationMarker);
      }
      print(nm);
      print(nla);
      print(nlo);

    } catch (e) {
      print(e);
    }
  }


  @override
  void initState() {
    super.initState();
    setCustomMapPin();
    _getCurrentLocation();
  }


  void setCustomMapPin() async {
    hospital = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/hospital.png');
    flag = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'Images/flag.png');

  }
/*
RaisedButton near(){
  return RaisedButton(
    onPressed: () {
      print(nm);
      print(nla);
      print(nlo);
      setState(() {
        markers.clear();
        Marker destinationMarker = Marker(
          markerId: MarkerId('$nm'),
          position: LatLng(
            nla,
            nlo,
          ),
          infoWindow: InfoWindow(
            title: nm,
            snippet: _destinationAddress,
          ),
          icon: flag,
        );
        markers.add(destinationMarker);
      });
    },
    child: Text(最近,
        style: TextStyle(
          fontSize: 16,
          color: const Color(0xffffffff),
        )
    ),
  );
}
*/

  RaisedButton markeroption(String heading, List data,List data_la, List data_lo, BitmapDescriptor markimg, var color) {
    return RaisedButton(
      color: setcolor[color] ? Color(0xff0a89ff) : Color(0xfffdecf2),
      splashColor: Colors.blue[100],
      onPressed: () {
        setState(() {
          setcolor = [false,false,false];
          setcolor[color] = !setcolor[color];
          markers.clear();
          _getAddress(data, data_la, data_lo,  markimg);
          _getCurrentLocation();
        });
      },
      child: Text(heading,
          style: TextStyle(
            fontSize: 16,
            //color: const Color(0xffffffff),
            color: setcolor[color] ? Colors.white : Colors.black,
          )
      ),
    );    //transform: Matrix4.rotationZ(0.1),
  }


  @override
  Widget build(BuildContext context) {
    //createMarker(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    var hun = ["南投縣仁愛鄉衛生所","南投縣信義鄉衛生所	","南投縣魚池鄉衛生所","南投縣鹿谷鄉衛生所"];
    var hun_la =[24.0242777, 23.696291, 23.8958262, 23.745099];
    var hun_lo =[121.13438229999998, 120.85467109999999, 120.94132130000001, 120.754461];

    var umb = ["南投縣仁愛鄉衛生所", "南投縣信義鄉衛生所", "南投縣魚池鄉衛生所", "南投縣鹿谷鄉衛生所", "財團法人埔里基督教醫院", "彰化基督教醫療財團法人南投基督教醫院", "臺中榮民總醫院埔里分院", "衛生福利部南投醫院"];
    var umb_la = [24.0242777, 23.696291, 23.8958262, 23.745099, 23.970487, 23.898894499999997, 23.975811999999998, 23.914007899999998];
    var umb_lo = [121.13438229999998, 120.85467109999999, 120.94132130000001, 120.754461, 120.9463085, 120.68396960000001, 120.99580239999999, 120.6849431];

    var tur = ["竹山秀傳醫院", "佑民醫療社團法人佑民醫院", "南投縣中寮鄉衛生所", "南投縣仁愛鄉衛生所", "南投縣信義鄉衛生所", "南投縣魚池鄉衛生所", "南投縣鹿谷鄉衛生所", "財團法人埔里基督教醫院", "彰化基督教醫療財團法人南投基督教醫院", "臺中榮民總醫院埔里分院", "衛生福利部南投醫院"];
    var tur_la = [23.8000765, 23.9605827, 23.8808579, 24.0242777, 23.696291, 23.8958262, 23.745099, 23.970487, 23.898894499999997, 23.975811999999998, 23.914007899999998];
    var tur_lo = [120.7140106, 120.68165959999997, 120.7655807, 121.13438229999998, 120.85467109999999, 120.94132130000001, 120.754461, 120.9463085, 120.68396960000001, 120.99580239999999, 120.6849431];

    return Container(
      height: height,
      width: width,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff65a2cd),
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
            // IconButton(
            //   // color: Colors.black,
            //   icon: ImageIcon(AssetImage("Images/maplogo.png")),
            //   onPressed: (){
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => blood(), maintainState: false));
            //   },
            // ),
          ],
        ),

        key: _scaffoldKey,
        body: Stack(
          children: <Widget>[

            // Map View
            GoogleMap(
              markers: markers != null ? Set<Marker>.from(markers) : null,
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),


            Container(
              // height: 55,
              height : (MediaQuery.of(context).size.height)/15,
              // alignment: Alignment.bottomCenter,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      markeroption("抗百步蛇毒血清",hun,hun_la,hun_lo, hospital, 0),
                      SizedBox(width: 10,),
                      markeroption("抗雨傘節及飯匙倩蛇毒血清",umb,umb_la,umb_lo, hospital, 1),
                      SizedBox(width: 10,),
                      markeroption("抗龜殼花及赤尾鮐蛇毒血清",tur,tur_la,tur_lo, hospital, 2),

                    ],
                  ),
                ],
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,

              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.red)
                  ),
                  color: Colors.red,
                  onPressed: () {
                    print(nm);
                    print(nla);
                    print(nlo);
                    setState(() {
                      markers.clear();
                      Marker destinationMarker = Marker(
                        markerId: MarkerId('$nm'),
                        position: LatLng(
                          nla,
                          nlo,
                        ),
                        infoWindow: InfoWindow(
                          title: nm,
                          snippet: _destinationAddress,
                        ),
                        icon: flag,
                      );
                      markers.add(destinationMarker);
                    });
                  },
                  child: Text("最近血清儲備處",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 16,
                        color: const Color(0xffffffff),
                      )
                  )
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   child: FloatingActionButton(
            //
            //     heroTag: "one",
            //     child: IconButton(
            //       // color: Colors.black,
            //       icon: ImageIcon(AssetImage("Images/maplogo.png")),
            //       onPressed: (){
            //         Navigator.pop(context);
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => blood(), maintainState: false));
            //       },
            //     ),
            //
            //     backgroundColor: Color(0xff0D2A66),
            //     // _onAddMarkerButtonPressed, Icons.add_location
            //   ),
            // ),


          ],
        ),
        drawer: Drawer(
          child: HomeMenu(),
        ),
        /*
        drawer: Drawer(
          child: HomeMenu(),
        ),
        */
      ),
    );
  }
}